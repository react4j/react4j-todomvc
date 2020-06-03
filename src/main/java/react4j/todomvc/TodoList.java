package react4j.todomvc;

import elemental2.dom.HTMLInputElement;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import jsinterop.base.Js;
import react4j.ReactNode;
import react4j.annotations.PostMount;
import react4j.annotations.ReactComponent;
import react4j.annotations.Render;
import react4j.annotations.ScheduleRender;
import react4j.dom.events.FormEvent;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.dom.proptypes.html.InputProps;
import react4j.dom.proptypes.html.attributeTypes.InputType;
import react4j.todomvc.model.AppData;
import static react4j.dom.DOM.*;

@ReactComponent
abstract class TodoList
{
  @ScheduleRender
  abstract void scheduleRender();

  private void handleToggleAll( @Nonnull final FormEvent event )
  {
    final HTMLInputElement input = Js.cast( event.getTarget() );
    AppData.service.toggleAll( input.checked );
  }

  @Nonnull
  @Render
  ReactNode render()
  {
    return
      div(
        div( header( new HtmlProps().className( "header" ),
                     h1( "todos" ),
                     TodoEntryBuilder.build()
             ),
             renderMainSection(),
             AppData.service.isNotEmpty() ? FooterBuilder.build() : null
        )
      );
  }

  @PostMount
  void postMount()
  {
    AppData.service.subscribe( this::scheduleRender );
    AppData.viewService.subscribe( this::scheduleRender );
  }

  @Nullable
  private ReactNode renderMainSection()
  {
    if ( AppData.service.isNotEmpty() )
    {
      return section( new HtmlProps().className( "header" ),
                      input( new InputProps()
                               .className( "toggle-all" )
                               .type( InputType.checkbox )
                               .onChange( this::handleToggleAll )
                      ),
                      ul( new HtmlProps().className( "todo-list" ),
                          AppData.viewService.filteredTodos().stream().map( TodoItemBuilder::todo )
                      )
      );
    }
    else
    {
      return null;
    }
  }
}
