package react4j.todomvc;

import akasha.Element;
import akasha.Global;
import arez.spytools.browser.react4j.ReactArezSpyUtil;
import react4j.dom.ReactDOM;
import react4j.todomvc.ioc.TodoInjector;

public final class App
{
  public void onModuleLoad()
  {
    ReactArezSpyUtil.enableSpyEventLogging();
    TodoInjector.create();
    final Element element = Global.document().getElementById( "app" );
    assert null != element;
    ReactDOM.render( TodoListBuilder.build(), element );
  }
}
