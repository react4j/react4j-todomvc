package react4j.todomvc.browser;

import javax.annotation.Nonnull;
import jsinterop.annotations.JsPackage;
import jsinterop.annotations.JsType;

@JsType( isNative = true, namespace = JsPackage.GLOBAL, name = "HTMLInputElement" )
public final class HTMLInputElement
{
  @Nonnull
  public String value;
  public boolean checked;

  private HTMLInputElement()
  {
  }

  public native void focus();

  public native void select();
}
