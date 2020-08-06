package react4j.todomvc.ioc;

import javax.annotation.Nonnull;
import react4j.todomvc.FooterFactory;
import react4j.todomvc.FooterTodoCountFactory;
import react4j.todomvc.TodoEntryFactory;
import react4j.todomvc.TodoItemFactory;
import react4j.todomvc.TodoListFactory;
import react4j.todomvc.model.BrowserLocation;
import react4j.todomvc.model.TodoRepository;
import react4j.todomvc.model.TodoService;
import react4j.todomvc.model.ViewService;
import sting.Injector;

@Injector( includes = { FooterFactory.class,
                        FooterTodoCountFactory.class,
                        TodoItemFactory.class,
                        TodoListFactory.class,
                        TodoEntryFactory.class,
                        TodoRepository.class,
                        BrowserLocation.class,
                        TodoService.class,
                        ViewService.class } )
public interface TodoInjector
{
  @SuppressWarnings("UnusedReturnValue")
  @Nonnull
  static TodoInjector create()
  {
    return new Sting_TodoInjector();
  }
}
