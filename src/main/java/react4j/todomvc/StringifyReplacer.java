package react4j.todomvc;

import javax.annotation.Nullable;
import jsinterop.base.Js;
import jsinterop.base.JsPropertyMap;

/**
 * Utility class that helps convert javascript values to strings for JSON.stringify method.
 * This class is extracted so that downstream
 */
final class StringifyReplacer
{
  /**
   * Return the transformed value for key-value pair.
   *
   * @param value the value to transform.
   * @return the transformed value.
   */
  @Nullable
  Object handleValue( @Nullable final Object value )
  {
    if ( null == value )
    {
      return null;
    }
    else if ( Js.typeof( value ).equals( "function" ) )
    {
      return Js.asPropertyMap( value ).get( "name" );
    }
    else if ( !Js.typeof( value ).equals( "object" ) )
    {
      return value;
    }
    else
    {
      final String v = String.valueOf( value );
      if ( !v.startsWith( "[object " ) )
      {
        return v;
      }
      else
      {
        final JsPropertyMap<Object> map = JsPropertyMap.of();
        final JsPropertyMap<Object> valueObj = Js.asPropertyMap( value );
        valueObj.forEach( propertyName -> map.set( propertyName, valueObj.getAny( propertyName ) ) );
        return map;
      }
    }
  }
}
