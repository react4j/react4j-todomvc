package react4j.todomvc.browser;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import jsinterop.annotations.JsPackage;
import jsinterop.annotations.JsType;

@JsType( isNative = true, namespace = JsPackage.GLOBAL, name = "History" )
public final class History
{
  private History()
  {
  }

  public native void pushState( @Nullable Object data, @Nonnull String unused, @Nonnull String url );
}
