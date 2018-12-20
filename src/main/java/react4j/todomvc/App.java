package react4j.todomvc;

import arez.spytools.browser.react4j.ReactArezSpyUtil;
import com.google.gwt.core.client.EntryPoint;
import elemental2.dom.DomGlobal;
import react4j.dom.ReactDOM;
import react4j.todomvc.dagger.TodoComponent;

public class App
  implements EntryPoint
{
  @Override
  public void onModuleLoad()
  {
    ReactArezSpyUtil.enableSpyEventLogging();
    TodoComponent.create();
    ReactDOM.render( TodoListBuilder.build(), DomGlobal.document.getElementById( "app" ) );
  }
}
