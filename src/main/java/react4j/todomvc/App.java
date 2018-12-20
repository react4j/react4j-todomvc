package react4j.todomvc;

import com.google.gwt.core.client.EntryPoint;
import elemental2.dom.DomGlobal;
import react4j.dom.ReactDOM;
import react4j.todomvc.model.AppData;

public class App
  implements EntryPoint
{
  @Override
  public void onModuleLoad()
  {
    AppData.service.subscribe( this::render );
    AppData.viewService.subscribe( this::render );
    render();
  }

  private void render()
  {
    ReactDOM.render( TodoListBuilder.build(), DomGlobal.document.getElementById( "app" ) );
  }
}
