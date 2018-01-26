package react4j.todomvc;

import elemental2.dom.HTMLInputElement;
import java.util.stream.Stream;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import javax.inject.Inject;
import jsinterop.base.Js;
import react4j.annotations.EventHandler;
import react4j.annotations.ReactComponent;
import react4j.arez.ReactArezComponent;
import react4j.core.BaseContext;
import react4j.core.BaseProps;
import react4j.core.ReactNode;
import react4j.dom.events.FormEvent;
import react4j.dom.events.FormEventHandler;
import react4j.dom.events.MouseEventHandler;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.dom.proptypes.html.InputProps;
import react4j.dom.proptypes.html.attributeTypes.InputType;
import react4j.todomvc.model.TodoRepository;
import react4j.todomvc.model.TodoService;
import react4j.todomvc.model.ViewService;
import static react4j.dom.DOM.*;
import static react4j.todomvc.TodoList_.*;

@ReactComponent
abstract class TodoList
  extends ReactArezComponent<BaseProps, BaseContext>
{
  @Inject
  TodoRepository _todoRepository;
  @Inject
  TodoService _todoService;
  @Inject
  ViewService _viewService;

  @EventHandler( MouseEventHandler.class )
  void handleClearCompleted()
  {
    _todoService.clearCompleted();
  }

  @EventHandler( FormEventHandler.class )
  void handleToggleAll( FormEvent event )
  {
    final HTMLInputElement input = Js.cast( event.getTarget() );
    _todoService.toggleAll( input.checked );
  }

  @Nonnull
  static ReactNode create()
  {
    return _create();
  }

  @Nullable
  @Override
  protected ReactNode render()
  {
    return
      div(
        div( header( new HtmlProps().className( "header" ),
                     h1( "todos" ),
                     TodoEntry.create()
             ),
             renderMainSection(),
             _todoRepository.isNotEmpty() ? Footer.create() : null
        )
      );
  }

  @Nullable
  private ReactNode renderMainSection()
  {
    if ( _todoRepository.isNotEmpty() )
    {
      return section( new HtmlProps().className( "header" ),
                      input( new InputProps()
                               .className( "toggle-all" )
                               .type( InputType.checkbox )
                               .onChange( _handleToggleAll( this ) )
                      ),
                      ul( new HtmlProps()
                            .className( "todo-list" ),
                          renderTodoItems()
                      )
      );
    }
    else
    {
      return null;
    }
  }

  private Stream<ReactNode> renderTodoItems()
  {
    return _viewService.filteredTodos().stream().
      map( todo -> TodoItem.create( TodoItem.Props.create( todo ) ) );
  }
}
