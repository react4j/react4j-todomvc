package react4j.todomvc;

import arez.spytools.browser.react4j.ReactArezSpyUtil;
import elemental2.dom.DomGlobal;
import react4j.dom.ReactDOM;
import react4j.todomvc.ioc.TodoInjector;

public final class App
{
  public void onModuleLoad()
  {
    ReactArezSpyUtil.enableSpyEventLogging();
    TodoInjector.create();
    ReactDOM.render( TodoListBuilder.build(), DomGlobal.document.getElementById( "app" ) );
  }
}
