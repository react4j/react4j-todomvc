package react4j.todomvc;

import arez.spytools.browser.react4j.ReactArezSpyUtil;
import com.google.gwt.core.client.EntryPoint;
import react4j.dom.ReactDOM;

public final class App
  implements EntryPoint
{
  @Override
  public void onModuleLoad()
  {
    ReactArezSpyUtil.enableSpyEventLogging();
    final Object element = WindowGlobal.document().getElementById( "app" );
    assert null != element;
    ReactDOM.render( TodoListBuilder.build(), element );
  }
}
