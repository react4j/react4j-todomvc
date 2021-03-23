package react4j.todomvc;

import akasha.Element;
import akasha.Global;
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
    final Element element = Global.document().getElementById( "app" );
    assert null != element;
    ReactDOM.render( TodoListBuilder.build(), element );
  }
}
