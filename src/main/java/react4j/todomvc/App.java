package react4j.todomvc;

import akasha.Element;
import akasha.WindowGlobal;
import arez.spytools.browser.react4j.ReactArezSpyUtil;
import react4j.dom.ReactDOM;

public final class App
{
  public void onModuleLoad()
  {
    ReactArezSpyUtil.enableSpyEventLogging();
    final Element element = WindowGlobal.document().getElementById( "app" );
    assert null != element;
    ReactDOM.render( TodoListBuilder.build(), element );
  }
}
