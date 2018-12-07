package react4j.todomvc.dagger;

import dagger.Component;
import javax.inject.Singleton;
import react4j.todomvc.FooterDaggerFactory;
import react4j.todomvc.FooterTodoCountDaggerFactory;
import react4j.todomvc.TodoEntryDaggerFactory;
import react4j.todomvc.TodoItemDaggerFactory;
import react4j.todomvc.TodoListDaggerFactory;
import react4j.todomvc.model.BrowserLocationDaggerModule;
import react4j.todomvc.model.TodoRepositoryDaggerModule;
import react4j.todomvc.model.TodoServiceDaggerModule;
import react4j.todomvc.model.ViewServiceDaggerModule;

@Singleton
@Component( modules = { TodoRepositoryDaggerModule.class,
                        BrowserLocationDaggerModule.class,
                        TodoServiceDaggerModule.class,
                        ViewServiceDaggerModule.class } )
public interface TodoComponent
  extends FooterDaggerFactory,
          TodoItemDaggerFactory,
          TodoListDaggerFactory,
          TodoEntryDaggerFactory,
          FooterTodoCountDaggerFactory
{
  static TodoComponent create()
  {
    final TodoComponent todoComponent = DaggerTodoComponent.create();
    todoComponent.bindFooter();
    todoComponent.bindFooterTodoCount();
    todoComponent.bindTodoItem();
    todoComponent.bindTodoList();
    todoComponent.bindTodoEntry();
    return todoComponent;
  }
}
