package react4j.todomvc;

import com.google.gwt.core.client.EntryPoint;
import elemental2.dom.DomGlobal;
import react4j.ReactElement;
import react4j.dom.ReactDOM;

public class App
  implements EntryPoint
{
  @Override
  public void onModuleLoad()
  {
    ReactDOM.render( ReactElement.createStrictMode( TodoListBuilder.build() ),
                     DomGlobal.document.getElementById( "app" ) );
  }
}
