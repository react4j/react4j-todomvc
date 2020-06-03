package react4j.todomvc;

import elemental2.dom.HTMLInputElement;
import java.util.Objects;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import jsinterop.base.Js;
import react4j.ReactNode;
import react4j.annotations.ReactComponent;
import react4j.annotations.Render;
import react4j.dom.events.FormEvent;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.dom.proptypes.html.InputProps;
import react4j.dom.proptypes.html.attributeTypes.InputType;
import react4j.todomvc.model.TodoRepository;
import react4j.todomvc.model.TodoService;
import react4j.todomvc.model.ViewService;
import static react4j.dom.DOM.*;

@ReactComponent( type = ReactComponent.Type.TRACKING )
abstract class TodoList
{
  @Nonnull
  private final TodoRepository _todoRepository;
  @Nonnull
  private final TodoService _todoService;
  @Nonnull
  private final ViewService _viewService;

  TodoList( @Nonnull final TodoRepository todoRepository,
            @Nonnull final TodoService todoService,
            @Nonnull final ViewService viewService )
  {
    _todoRepository = Objects.requireNonNull( todoRepository );
    _todoService = Objects.requireNonNull( todoService );
    _viewService = Objects.requireNonNull( viewService );
  }

  private void handleToggleAll( @Nonnull final FormEvent event )
  {
    final HTMLInputElement input = Js.cast( event.getTarget() );
    _todoService.toggleAll( input.checked );
  }

  @Nonnull
  @Render
  ReactNode render()
  {
    return
      div(
        div( header( new HtmlProps().className( "header" ), h1( "todos" ), TodoEntryBuilder.build() ),
             renderMainSection(),
             _todoRepository.isNotEmpty() ? FooterBuilder.build() : null
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
                               .onChange( this::handleToggleAll )
                      ),
                      ul( new HtmlProps().className( "todo-list" ),
                          _viewService.filteredTodos().stream().map( TodoItemBuilder::todo )
                      )
      );
    }
    else
    {
      return null;
    }
  }
}
