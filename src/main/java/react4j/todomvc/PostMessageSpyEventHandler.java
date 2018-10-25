package react4j.todomvc;

import arez.spy.ActionCompletedEvent;
import arez.spy.ActionStartedEvent;
import arez.spy.ObservableValueChangedEvent;
import arez.spy.SerializableEvent;
import arez.spy.SpyEventHandler;
import elemental2.core.Global;
import elemental2.core.JsArray;
import elemental2.dom.DomGlobal;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import jsinterop.base.Any;
import jsinterop.base.Js;
import jsinterop.base.JsPropertyMap;

public final class PostMessageSpyEventHandler
  implements SpyEventHandler
{
  @Override
  public void onSpyEvent( @Nonnull final Object event )
  {
    final boolean isActionEvent = event instanceof ActionStartedEvent || event instanceof ActionCompletedEvent;
    final boolean isObservableChangedEvent = event instanceof ObservableValueChangedEvent;
    if ( event instanceof SerializableEvent )
    {
      final HashMap<String, Object> data = new HashMap<>();
      ( (SerializableEvent) event ).toMap( data );
      final JsPropertyMap<Object> message = JsPropertyMap.of();
      for ( final Map.Entry<String, Object> entry : data.entrySet() )
      {
        final String key = entry.getKey();
        Any value = Js.asAny( entry.getValue() );
        if ( isActionEvent && "parameters".equals( key ) )
        {
          value = Js.asAny( parametersToArray( value.cast() ) );
          //continue;
        }
        else if ( isActionEvent && "result".equals( key ) )
        {
          value = cloneValue( value );
          //continue;
        }
        else if ( isObservableChangedEvent && "value".equals( key ) )
        {
          continue;
        }

        message.set( key, value );
      }
      DomGlobal.window.postMessage( message, "*" );
    }
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
