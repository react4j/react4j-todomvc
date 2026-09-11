package spritz;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

public class Stream<T>
{
  @FunctionalInterface
  protected interface SubscribeAction<T>
  {
    Subscription subscribe( Consumer<? super T> consumer );
  }

  @Nullable
  private final SubscribeAction<T> _subscribeAction;

  protected Stream()
  {
    _subscribeAction = null;
  }

  private Stream( @Nonnull final SubscribeAction<T> subscribeAction )
  {
    _subscribeAction = Objects.requireNonNull( subscribeAction );
  }

  @Nonnull
  public static <T> Subject<T> subject( @Nullable final String name )
  {
    return new Subject<>();
  }

  @Nonnull
  public final <R> Stream<R> map( @Nonnull final Function<? super T, ? extends R> mapper )
  {
    Objects.requireNonNull( mapper );
    return new Stream<>( consumer -> forEach( value -> consumer.accept( mapper.apply( value ) ) ) );
  }

  @Nonnull
  public final Stream<T> filter( @Nonnull final Predicate<? super T> predicate )
  {
    Objects.requireNonNull( predicate );
    return new Stream<>( consumer -> forEach( value -> {
      if ( predicate.test( value ) )
      {
        consumer.accept( value );
      }
    } ) );
  }

  @Nonnull
  public final Stream<T> startWith( @Nonnull final T value )
  {
    return new Stream<>( consumer -> {
      consumer.accept( value );
      return forEach( consumer );
    } );
  }

  @Nonnull
  public final <R> Stream<R> scan( @Nonnull final BiFunction<? super T, R, R> accumulator,
                                   @Nonnull final R initialValue )
  {
    Objects.requireNonNull( accumulator );
    Objects.requireNonNull( initialValue );
    return new Stream<>( consumer -> {
      final List<R> state = new ArrayList<>();
      state.add( initialValue );
      return forEach( value -> {
        final R next = accumulator.apply( value, state.get( 0 ) );
        state.set( 0, next );
        consumer.accept( next );
      } );
    } );
  }

  @Nonnull
  public final Stream<T> publishReplayWithMaxSize( final int maxSize )
  {
    if ( maxSize <= 0 )
    {
      throw new IllegalArgumentException( "maxSize must be greater than zero" );
    }
    return new ReplayStream<>( this, maxSize );
  }

  @Nonnull
  public final Stream<T> refCount()
  {
    return this;
  }

  @Nonnull
  public final Subscription subscribe( @Nonnull final Subject<? super T> subject )
  {
    Objects.requireNonNull( subject );
    return forEach( subject::next );
  }

  @Nonnull
  public final Subscription forEach( @Nonnull final Consumer<? super T> consumer )
  {
    return subscribeActual( Objects.requireNonNull( consumer ) );
  }

  @Nonnull
  protected Subscription subscribeActual( @Nonnull final Consumer<? super T> consumer )
  {
    assert null != _subscribeAction;
    return _subscribeAction.subscribe( consumer );
  }

  private static final class ReplayStream<T>
    extends Stream<T>
  {
    @Nonnull
    private final Stream<T> _source;
    private final int _maxSize;
    @Nonnull
    private final List<T> _values = new ArrayList<>();
    @Nonnull
    private final List<Consumer<? super T>> _consumers = new ArrayList<>();
    @Nullable
    private Subscription _upstream;

    private ReplayStream( @Nonnull final Stream<T> source, final int maxSize )
    {
      _source = source;
      _maxSize = maxSize;
    }

    @Nonnull
    @Override
    protected Subscription subscribeActual( @Nonnull final Consumer<? super T> consumer )
    {
      _values.forEach( consumer );
      _consumers.add( consumer );
      if ( null == _upstream )
      {
        _upstream = _source.forEach( this::next );
      }
      return new Subscription( () -> _consumers.remove( consumer ) );
    }

    private void next( @Nonnull final T value )
    {
      _values.add( value );
      while ( _values.size() > _maxSize )
      {
        _values.remove( 0 );
      }
      new ArrayList<>( _consumers ).forEach( consumer -> consumer.accept( value ) );
    }
  }
}
