package react4j.todomvc.model;

import jsinterop.annotations.JsFunction;

@FunctionalInterface
@JsFunction
public interface Procedure
{
  /**
   * Perform an action.
   */
  void call();
}
