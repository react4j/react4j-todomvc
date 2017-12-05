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
    Footer_.setProvider( () -> todoComponent.createFooterDaggerComponent().get() );
    FooterTodoCount_.setProvider( () -> todoComponent.createFooterTodoCountDaggerComponent().get() );
    TodoItem_.setProvider( () -> todoComponent.createTodoItemDaggerComponent().get() );
    TodoList_.setProvider( () -> todoComponent.createTodoListDaggerComponent().get() );
    TodoEntry_.setProvider( () -> todoComponent.createTodoEntryDaggerComponent().get() );
    ReactDOM.render( TodoList.create(), DomGlobal.document.getElementById( "todoapp" ) );
  }
}
