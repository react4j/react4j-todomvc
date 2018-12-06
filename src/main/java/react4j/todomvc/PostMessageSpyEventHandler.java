package react4j.todomvc;

import arez.spy.ActionCompleteEvent;
import arez.spy.ActionStartEvent;
import arez.spy.ComputeCompleteEvent;
import arez.spy.ComputeStartEvent;
import arez.spy.ObservableValueChangeEvent;
import arez.spy.SerializableEvent;
import arez.spy.SpyEventHandler;
import elemental2.core.Global;
import elemental2.core.JsArray;
import elemental2.dom.DomGlobal;
import elemental2.dom.Window;
import elemental2.promise.Promise;
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
  implements SpyEventHandler
{
  private final ArrayList<SerializableEvent> _messages = new ArrayList<>();
  private final Window _window;
  private final boolean _deferPostMessage = true;
  private Promise<Object> _promise;

  PostMessageSpyEventHandler()
  {
    this( DomGlobal.window );
  }

  private PostMessageSpyEventHandler( @Nonnull final Window window )
  {
    _window = Objects.requireNonNull( window );
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
    final boolean isActionEvent = event instanceof ActionStartEvent || event instanceof ActionCompleteEvent;
    final boolean isComputeEvent = event instanceof ComputeStartEvent || event instanceof ComputeCompleteEvent;
    final boolean isObservableChangeEvent = event instanceof ObservableValueChangeEvent;
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
      else if ( ( isComputeEvent || isActionEvent ) && "result".equals( key ) )
      {
        //value = cloneValue( value );
        continue;
      }
      else if ( isObservableChangeEvent && "value".equals( key ) )
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
        if ( null == _promise )
        {
          _promise = Promise.resolve( this ).then( ignored -> {
            sendMessages();
            _promise = null;
            return null;
          } );
        }

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
    final JsPropertyMap<Object> message = eventToMessage( e );
    _window.postMessage( message, "*" );
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
      return Js.asAny( Global.JSON.parse( Global.JSON.stringify( value, ( key, v ) -> replacer.handleValue( v ) ) ) );
    }
    catch ( final Throwable t )
    {
      return Js.asAny( "<not_transferable>" );
    }
  }
}
