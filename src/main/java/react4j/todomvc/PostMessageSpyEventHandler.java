package react4j.todomvc;

import arez.Environment;
import arez.Function;
import arez.SafeFunction;
import arez.spy.ActionCompletedEvent;
import arez.spy.ActionStartedEvent;
import arez.spy.ObservableValueChangedEvent;
import arez.spy.SerializableEvent;
import arez.spy.SpyEventHandler;
import elemental2.core.Global;
import elemental2.core.JsArray;
import elemental2.dom.DomGlobal;
import elemental2.dom.Window;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import jsinterop.base.Any;
import jsinterop.base.Js;
import jsinterop.base.JsPropertyMap;

public final class PostMessageSpyEventHandler
  implements SpyEventHandler, Environment
{
  private final ArrayList<SerializableEvent> _messages = new ArrayList<>();
  private final Window _window;
  private final boolean _deferPostMessage = true;

  public PostMessageSpyEventHandler()
  {
    this( DomGlobal.window );
  }

  public PostMessageSpyEventHandler( @Nonnull final Window window )
  {
    _window = Objects.requireNonNull( window );
  }

  @Override
  public <T> T run( @Nonnull final SafeFunction<T> function )
  {
    try
    {
      return function.call();
    }
    finally
    {
      sendMessages();
    }
  }

  @Override
  public <T> T run( @Nonnull final Function<T> function )
    throws Throwable
  {
    try
    {
      return function.call();
    }
    finally
    {
      sendMessages();
    }
  }

  private void sendMessages()
  {
    for ( final SerializableEvent event : _messages )
    {
      postMessage( event );
    }
    _messages.clear();
  }

  private JsPropertyMap<Object> eventToMessage( final SerializableEvent event )
  {
    final boolean isActionEvent = event instanceof ActionStartedEvent || event instanceof ActionCompletedEvent;
    final boolean isObservableChangedEvent = event instanceof ObservableValueChangedEvent;
    final HashMap<String, Object> data = new HashMap<>();
    event.toMap( data );
    final JsPropertyMap<Object> message = JsPropertyMap.of();
    for ( final Map.Entry<String, Object> entry : data.entrySet() )
    {
      final String key = entry.getKey();
      Any value = Js.asAny( entry.getValue() );
      if ( isActionEvent && "parameters".equals( key ) )
      {
        //value = Js.asAny( parametersToArray( value.cast() ) );
        continue;
      }
      else if ( isActionEvent && "result".equals( key ) )
      {
        //value = cloneValue( value );
        continue;
      }
      else if ( isObservableChangedEvent && "value".equals( key ) )
      {
        //value = cloneValue( value );
        continue;
      }

      message.set( key, value );
    }
    return message;
  }

  @Override
  public void onSpyEvent( @Nonnull final Object event )
  {
    if ( event instanceof SerializableEvent )
    {
      final SerializableEvent e = (SerializableEvent) event;
      if ( _deferPostMessage )
      {
        _messages.add( e );
      }
      else
      {
        postMessage( e );
      }
    }
  }

  private void postMessage( final SerializableEvent e )
  {
    // TODO: Should send this across bundled in a container with a symbol that represents the message
    //       We could even bundle multiple events in one message and send an XL size message
    _window.postMessage( eventToMessage( e ), "*" );
  }

  /**
   * Convert array of parameters into something consumable by a human.
   * Java objects use toString() while native javascript objects use <code>JSON.stringify()</code>.
   *
   * @param parameters the parameters to convert
   * @return a string representation of the parameters
   */
  @Nonnull
  private Any[] parametersToArray( @Nonnull final Object[] parameters )
  {
    final Any[] result = JsArray.of();
    for ( int i = 0; i < parameters.length; i++ )
    {
      result[ i ] = cloneValue( parameters[ i ] );
    }
    return result;
  }

  @Nullable
  private Any cloneValue( @Nullable final Object value )
  {
    try
    {
      final StringifyReplacer replacer = new StringifyReplacer();
      return Js.asAny( Global.JSON.parse( Global.JSON.stringify( value,
                                                                 ( key, value1 ) -> replacer.handleValue( value1 ) ) ) );
    }
    catch ( final Throwable t )
    {
      return Js.asAny( "<not_transferable>" );
    }
  }
}
