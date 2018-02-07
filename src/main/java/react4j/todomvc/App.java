package react4j.todomvc;

import com.google.gwt.core.client.EntryPoint;
import elemental2.dom.DomGlobal;
import react4j.arez.spy.ArezSpyUtil;
import react4j.dom.ReactDOM;
import react4j.todomvc.model.AppData;
import react4j.todomvc.model.ViewService;

public class App
  implements EntryPoint
{
  @Override
  public void onModuleLoad()
  {
    ArezSpyUtil.enableSpyEventLogging();
    // This next line forces the creation of all the resources, ensuring that the transactions
    // are not wrapped in another transaction
    @SuppressWarnings( "unused" )
    final ViewService viewService = AppData.viewService;
    ReactDOM.render( TodoListBuilder.build(), DomGlobal.document.getElementById( "todoapp" ) );
  }
}
