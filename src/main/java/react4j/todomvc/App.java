package react4j.todomvc;

import akasha.Element;
import akasha.WindowGlobal;
import arez.spytools.browser.react4j.ReactArezSpyUtil;
import com.google.gwt.core.client.EntryPoint;
import react4j.dom.ReactDOM;
import react4j.todomvc.ioc.TodoInjector;

public final class App
  implements EntryPoint
{
  @Override
  public void onModuleLoad()
  {
    ReactArezSpyUtil.enableSpyEventLogging();
    TodoInjector.create();
    final Element element = WindowGlobal.document().getElementById( "app" );
    assert null != element;
    ReactDOM.render( TodoListBuilder.build(), element );
  }
}
