package react4j.todomvc;

import elemental2.dom.HTMLInputElement;
import javax.annotation.Nullable;
import jsinterop.base.Js;
import react4j.annotations.Callback;
import react4j.annotations.ReactComponent;
import react4j.arez.ReactArezComponent;
import react4j.core.ReactNode;
import react4j.dom.events.FormEvent;
import react4j.dom.events.FormEventHandler;
import react4j.dom.events.MouseEventHandler;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.dom.proptypes.html.InputProps;
import react4j.dom.proptypes.html.attributeTypes.InputType;
import react4j.todomvc.model.AppData;
import static react4j.dom.DOM.*;
import static react4j.todomvc.TodoList_.*;

@ReactComponent
abstract class TodoList
  extends ReactArezComponent
{
  @Callback( MouseEventHandler.class )
  void handleClearCompleted()
  {
    AppData.service.clearCompleted();
  }

  @Callback( FormEventHandler.class )
  void handleToggleAll( FormEvent event )
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
             AppData.model.isNotEmpty() ? FooterBuilder.build() : null
        )
      );
  }

  @Nullable
  private ReactNode renderMainSection()
  {
    if ( AppData.model.isNotEmpty() )
    {
      return section( new HtmlProps().className( "header" ),
                      input( new InputProps()
                               .className( "toggle-all" )
                               .type( InputType.checkbox )
                               .onChange( _handleToggleAll( this ) )
                      ),
                      ul( new HtmlProps()
                            .className( "todo-list" ),
                          AppData.viewService.filteredTodos().stream().
                            map( todo -> TodoItemBuilder.key( todo.getId() ).todo( todo ) )
                      )
      );
    }
    else
    {
      return null;
    }
  }
}
