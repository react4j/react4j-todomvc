package react4j.todomvc;

import arez.annotations.PostConstruct;
import arez.annotations.PreDispose;
import elemental2.dom.HTMLInputElement;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import jsinterop.base.Js;
import react4j.ReactNode;
import react4j.annotations.ReactComponent;
import react4j.dom.events.FormEvent;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.dom.proptypes.html.InputProps;
import react4j.dom.proptypes.html.attributeTypes.InputType;
import react4j.todomvc.model.AppData;
import react4j.todomvc.model.Todo;
import spritz.Subscription;
import static react4j.dom.DOM.*;

@ReactComponent
abstract class TodoList
  extends SpritzComponent
{
  private List<Todo> _todos;
  private Subscription _filteredTodosSubscription;

  @PostConstruct
  void postConstruct()
  {
    _filteredTodosSubscription = AppData.viewService.filteredTodos().forEach( todos -> {
      _todos = todos;
      maybeScheduleRender();
    } );
  }

  @PreDispose
  @Override
  void preDispose()
  {
    super.preDispose();
    _filteredTodosSubscription.cancel();
  }

  private void handleToggleAll( @Nonnull final FormEvent event )
  {
    final HTMLInputElement input = Js.cast( event.getTarget() );
    AppData.service.toggleAll( input.checked );
  }

  @Nullable
  @Override
  protected ReactNode render()
  {
    return
      div(
        div( header( new HtmlProps().className( "header" ),
                     h1( "todos" ),
                     TodoEntryBuilder.build()
             ),
             renderMainSection(),
             !_todos.isEmpty() ? FooterBuilder.build() : null
        )
      );
  }

  @Nullable
  private ReactNode renderMainSection()
  {
    if ( !_todos.isEmpty() )
    {
      return section( new HtmlProps().className( "header" ),
                      input( new InputProps()
                               .className( "toggle-all" )
                               .type( InputType.checkbox )
                               .onChange( this::handleToggleAll )
                      ),
                      ul( new HtmlProps().className( "todo-list" ),
                          _todos.stream().map( TodoItemBuilder::todo )
                      )
      );
    }
    else
    {
      return null;
    }
  }
}
