package react4j.todomvc;

import com.google.gwt.core.client.EntryPoint;
import elemental2.dom.DomGlobal;
import react4j.arez.spy.ArezSpyUtil;
import react4j.dom.ReactDOM;
import react4j.todomvc.model.DaggerTodoComponent;
import react4j.todomvc.model.TodoComponent;

public class App
  implements EntryPoint
{
  @Override
  public void onModuleLoad()
  {
    ArezSpyUtil.enableSpyEventLogging();
    final TodoComponent todoComponent = DaggerTodoComponent.create();
    todoComponent.bindFooter();
    todoComponent.bindFooterTodoCount();
    todoComponent.bindTodoItem();
    todoComponent.bindTodoList();
    todoComponent.bindTodoEntry();
    ReactDOM.render( TodoListBuilder.build(), DomGlobal.document.getElementById( "todoapp" ) );
  }
}
