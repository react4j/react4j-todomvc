package react4j.todomvc;

import elemental2.dom.DomGlobal;
import react4j.ReactElement;
import react4j.dom.ReactDOM;
import react4j.todomvc.model.AppData;

public final class App
{
  public void onModuleLoad()
  {
    AppData.service.subscribe( this::render );
    AppData.viewService.subscribe( this::render );
    render();
  }

  private void render()
  {
    ReactDOM.render( ReactElement.createStrictMode( TodoListBuilder.build() ),
                     DomGlobal.document.getElementById( "app" ) );
  }
}
