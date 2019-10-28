package react4j.todomvc.dagger;

import dagger.Component;
import javax.annotation.Nonnull;
import javax.inject.Singleton;
import react4j.todomvc.FooterDaggerComponentExtension;
import react4j.todomvc.FooterTodoCountDaggerComponentExtension;
import react4j.todomvc.TodoEntryDaggerComponentExtension;
import react4j.todomvc.TodoItemDaggerComponentExtension;
import react4j.todomvc.TodoListDaggerComponentExtension;
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
  extends FooterDaggerComponentExtension,
          TodoItemDaggerComponentExtension,
          TodoListDaggerComponentExtension,
          TodoEntryDaggerComponentExtension,
          FooterTodoCountDaggerComponentExtension
{
  @Nonnull
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
