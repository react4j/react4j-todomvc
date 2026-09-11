package spritz;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;
import javax.annotation.Nonnull;

public final class Subject<T>
  extends Stream<T>
{
  @Nonnull
  private final List<Consumer<? super T>> _consumers = new ArrayList<>();
  private boolean _complete;

  public void next( @Nonnull final T value )
  {
    if ( !_complete )
    {
      new ArrayList<>( _consumers ).forEach( consumer -> consumer.accept( value ) );
    }
  }

  public void complete()
  {
    _complete = true;
    _consumers.clear();
  }

  @Nonnull
  @Override
  protected Subscription subscribeActual( @Nonnull final Consumer<? super T> consumer )
  {
    if ( _complete )
    {
      return new Subscription( () -> { } );
    }
    _consumers.add( consumer );
    return new Subscription( () -> _consumers.remove( consumer ) );
  }
}
