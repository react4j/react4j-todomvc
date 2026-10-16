package react4j.todomvc.browser;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import jsinterop.annotations.JsPackage;
import jsinterop.annotations.JsProperty;
import jsinterop.annotations.JsType;

@JsType( isNative = true, namespace = JsPackage.GLOBAL, name = "Document" )
public final class Document
{
  private Document()
  {
  }

  @Nullable
  public native Element getElementById( @Nonnull String elementId );

  @JsProperty( name = "title" )
  @Nonnull
  public native String title();
}
