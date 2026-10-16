package react4j.todomvc.browser;

import javax.annotation.Nonnull;
import jsinterop.annotations.JsFunction;

@FunctionalInterface
@JsFunction
public interface EventListener
{
  void handleEvent( @Nonnull Event event );
}
