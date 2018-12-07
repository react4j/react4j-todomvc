package react4j.todomvc;

import arez.Arez;
import arez.spytools.browser.react4j.ReactArezSpyUtil;
import elemental2.dom.DomGlobal;
import react4j.dom.ReactDOM;
import react4j.todomvc.dagger.TodoComponent;

public final class App
{
  public void onModuleLoad()
  {
    if ( Arez.areSpiesEnabled() )
    {
      //Avoid referencing ArezSpyUtil if spies are disabled so compiler optimizes it away
      ReactArezSpyUtil.enableSpyEventLogging();
    }
    TodoComponent.create();
    ReactDOM.render( TodoListBuilder.build(), DomGlobal.document.getElementById( "todoapp" ) );
  }
}
