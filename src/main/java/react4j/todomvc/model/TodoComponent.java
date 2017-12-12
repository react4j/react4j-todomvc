package react4j.todomvc.model;

import dagger.Component;
import javax.inject.Singleton;
import react4j.todomvc.FooterDaggerFactory;
import react4j.todomvc.FooterTodoCountDaggerFactory;
import react4j.todomvc.TodoEntryDaggerFactory;
import react4j.todomvc.TodoItemDaggerFactory;
import react4j.todomvc.TodoListDaggerFactory;

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
}
