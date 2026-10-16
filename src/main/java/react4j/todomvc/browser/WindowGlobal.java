package react4j.todomvc.browser;

import javax.annotation.Nonnull;
import jsinterop.annotations.JsPackage;
import jsinterop.annotations.JsProperty;
import jsinterop.annotations.JsType;

@JsType( isNative = true, namespace = JsPackage.GLOBAL, name = "window" )
public final class WindowGlobal
{
  private WindowGlobal()
  {
  }

  @JsProperty( name = "document" )
  @Nonnull
  public static native Document document();

  @JsProperty( name = "location" )
  @Nonnull
  public static native Location location();

  @JsProperty( name = "history" )
  @Nonnull
  public static native History history();

  public static native void addEventListener( @Nonnull String type, @Nonnull EventListener listener, boolean capture );
}
