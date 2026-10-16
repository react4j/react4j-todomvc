package react4j.todomvc.browser;

import javax.annotation.Nonnull;
import jsinterop.annotations.JsPackage;
import jsinterop.annotations.JsProperty;
import jsinterop.annotations.JsType;

@JsType( isNative = true, namespace = JsPackage.GLOBAL, name = "Location" )
public final class Location
{
  private Location()
  {
  }

  @JsProperty( name = "hash" )
  @Nonnull
  public native String hash();

  @JsProperty( name = "hash" )
  public native void setHash( @Nonnull String hash );

  @JsProperty( name = "pathname" )
  @Nonnull
  public native String pathname();

  @JsProperty( name = "search" )
  @Nonnull
  public native String search();
}
