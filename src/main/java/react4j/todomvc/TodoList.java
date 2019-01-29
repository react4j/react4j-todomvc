package react4j.todomvc;

import elemental2.dom.HTMLInputElement;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import javax.inject.Inject;
import jsinterop.base.Js;
import react4j.Component;
import react4j.ReactNode;
import react4j.annotations.ReactComponent;
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
  extends Component
{
  @Inject
  TodoRepository _todoRepository;
  @Inject
  TodoService _todoService;
  @Inject
  ViewService _viewService;

  private void handleToggleAll( @Nonnull final FormEvent event )
  {
    final HTMLInputElement input = Js.cast( event.getTarget() );
    _todoService.toggleAll( input.checked );
  }

  @Nullable
  @Override
  protected ReactNode render()
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
