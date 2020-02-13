package react4j.todomvc.ioc;

import dagger.Component;
import javax.annotation.Nonnull;
import javax.inject.Singleton;
import react4j.todomvc.FooterFactory;
import react4j.todomvc.FooterTodoCountFactory;
import react4j.todomvc.TodoEntryFactory;
import react4j.todomvc.TodoItemFactory;
import react4j.todomvc.TodoListFactory;
import react4j.todomvc.model.BrowserLocationDaggerModule;
import react4j.todomvc.model.TodoRepositoryDaggerModule;
import react4j.todomvc.model.TodoServiceDaggerModule;
import react4j.todomvc.model.ViewServiceDaggerModule;

@SuppressWarnings( "UnusedReturnValue" )
@Singleton
@Component( modules = { TodoRepositoryDaggerModule.class,
                        BrowserLocationDaggerModule.class,
                        TodoServiceDaggerModule.class,
                        ViewServiceDaggerModule.class } )
public interface TodoComponent
{
  FooterFactory footerFactory();

  TodoItemFactory todoItemFactory();

  TodoListFactory todoListFactory();

  TodoEntryFactory todoEntryFactory();

  FooterTodoCountFactory footerTodoCountFactory();

  @Nonnull
  static TodoComponent create()
  {
    final TodoComponent todoComponent = DaggerTodoComponent.create();
    todoComponent.footerFactory();
    todoComponent.todoItemFactory();
    todoComponent.todoListFactory();
    todoComponent.todoEntryFactory();
    todoComponent.footerTodoCountFactory();
    return todoComponent;
  }
}
