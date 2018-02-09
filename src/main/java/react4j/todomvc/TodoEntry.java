package react4j.todomvc;

import arez.annotations.Observable;
import elemental2.dom.HTMLInputElement;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import jsinterop.base.Js;
import react4j.annotations.EventHandler;
import react4j.annotations.ReactComponent;
import react4j.arez.ReactArezComponent;
import react4j.core.ReactNode;
import react4j.dom.events.FormEvent;
import react4j.dom.events.FormEventHandler;
import react4j.dom.events.KeyboardEvent;
import react4j.dom.events.KeyboardEventHandler;
import react4j.dom.proptypes.html.InputProps;
import react4j.todomvc.model.AppData;
import static react4j.dom.DOM.*;
import static react4j.todomvc.TodoEntry_.*;

@ReactComponent
abstract class TodoEntry
  extends ReactArezComponent
{
  private String _todoText = "";

  @Observable
  String getTodoText()
  {
    return _todoText;
  }

  void setTodoText( final String todoText )
  {
    _todoText = todoText;
  }

  @EventHandler( KeyboardEventHandler.class )
  void handleNewTodoKeyDown( @Nonnull final KeyboardEvent event )
  {
    if ( KeyCodes.ENTER_KEY == event.getKeyCode() )
    {
      event.preventDefault();
      final String val = getTodoText().trim();
      if ( val.length() > 0 )
      {
        AppData.service.addTodo( val );
        setTodoText( "" );
      }
    }
  }

  @EventHandler( FormEventHandler.class )
  void handleChange( @Nonnull final FormEvent event )
  {
    final HTMLInputElement input = Js.cast( event.getTarget() );
    setTodoText( input.value );
  }

  @Nullable
  @Override
  protected ReactNode render()
  {
    return input( new InputProps()
                    .className( "new-todo" )
                    .placeHolder( "What needs to be done?" )
                    .value( getTodoText() )
                    .onKeyDown( _handleNewTodoKeyDown( this ) )
                    .onChange( _handleChange( this ) )
                    .autoFocus( true )
    );
  }
}
