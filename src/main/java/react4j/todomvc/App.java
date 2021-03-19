package react4j.todomvc;

import arez.spytools.browser.react4j.ReactArezSpyUtil;
import elemental2.dom.DomGlobal;
import react4j.dom.ReactDOM;

public final class App
{
  public void onModuleLoad()
  {
    ReactArezSpyUtil.enableSpyEventLogging();
    ReactDOM.render( TodoListBuilder.build(), DomGlobal.document.getElementById( "app" ) );
  }
}
