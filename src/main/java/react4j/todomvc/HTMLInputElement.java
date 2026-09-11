package react4j.todomvc;

import jsinterop.annotations.JsMethod;
import jsinterop.annotations.JsPackage;
import jsinterop.annotations.JsType;

@JsType( isNative = true, name = "HTMLInputElement", namespace = JsPackage.GLOBAL )
final class HTMLInputElement
{
  String value;
  boolean checked;

  @JsMethod
  native void focus();

  @JsMethod
  native void select();
}
