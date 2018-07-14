package react4j.todomvc;

import arez.Arez;
import elemental2.dom.DomGlobal;
import react4j.arez.spy.ArezSpyUtil;
import react4j.dom.ReactDOM;
import react4j.todomvc.model.DaggerTodoComponent;
import react4j.todomvc.model.TodoComponent;

public final class App
{
  public void onModuleLoad()
  {
    if ( Arez.areSpiesEnabled() )
    {
      //Avoid referencing ArezSpyUtil if spies are disabled so compiler optimizes it away
      ArezSpyUtil.enableSpyEventLogging();
    }
    final TodoComponent todoComponent = DaggerTodoComponent.create();
    todoComponent.bindFooter();
    todoComponent.bindFooterTodoCount();
    todoComponent.bindTodoItem();
    todoComponent.bindTodoList();
    todoComponent.bindTodoEntry();
    ReactDOM.render( TodoListBuilder.build(), DomGlobal.document.getElementById( "todoapp" ) );
  }
}
