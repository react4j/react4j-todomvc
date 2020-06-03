package react4j.todomvc;

import elemental2.dom.HTMLInputElement;
import javax.annotation.Nonnull;
import jsinterop.base.Js;
import react4j.ReactNode;
import react4j.annotations.Render;
import react4j.annotations.ScheduleRender;
import react4j.annotations.View;
import react4j.dom.events.FormEvent;
import react4j.dom.events.KeyboardEvent;
import react4j.dom.proptypes.html.InputProps;
import react4j.todomvc.model.AppData;
import static react4j.dom.DOM.*;

@View
abstract class TodoEntry
{
  @Nonnull
  private String _todoText = "";

  @ScheduleRender
  abstract void scheduleRender();

  private void setTodoText( @Nonnull final String todoText )
  {
    _todoText = todoText;
    scheduleRender();
  }

  private void handleNewTodoKeyDown( @Nonnull final KeyboardEvent event )
  {
    if ( KeyCodes.ENTER_KEY == event.getKeyCode() )
    {
      event.preventDefault();
      final String val = _todoText.trim();
      if ( val.length() > 0 )
      {
        AppData.service.addTodo( val );
        setTodoText( "" );
      }
    }
  }

  private void handleChange( @Nonnull final FormEvent event )
  {
    final HTMLInputElement input = Js.cast( event.getTarget() );
    setTodoText( input.value );
  }

  @Nonnull
  @Render
  ReactNode render()
  {
    return input( new InputProps()
                    .className( "new-todo" )
                    .placeHolder( "What needs to be done?" )
                    .value( _todoText )
                    .onKeyDown( this::handleNewTodoKeyDown )
                    .onChange( this::handleChange )
                    .autoFocus( true )
    );
  }
}
