package react4j.todomvc;

import arez.annotations.Action;
import arez.annotations.Observable;
import elemental2.dom.HTMLInputElement;
import javax.annotation.Nonnull;
import jsinterop.base.Js;
import react4j.ReactNode;
import react4j.annotations.ReactComponent;
import react4j.annotations.Render;
import react4j.dom.events.FormEvent;
import react4j.dom.events.KeyboardEvent;
import react4j.dom.proptypes.html.InputProps;
import react4j.todomvc.model.AppData;
import static react4j.dom.DOM.*;

@ReactComponent( type = ReactComponent.Type.TRACKING )
abstract class TodoEntry
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

  private void handleNewTodoKeyDown( @Nonnull final KeyboardEvent event )
  {
    if ( KeyCodes.ENTER_KEY == event.getKeyCode() )
    {
      event.preventDefault();
      addTodo();
    }
  }

  @Action
  void addTodo()
  {
    final String val = getTodoText().trim();
    if ( val.length() > 0 )
    {
      AppData.service.addTodo( val );
      setTodoText( "" );
    }
  }

  @Action( reportParameters = false )
  void handleChange( @Nonnull final FormEvent event )
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
                    .value( getTodoText() )
                    .onKeyDown( this::handleNewTodoKeyDown )
                    .onChange( this::handleChange )
                    .autoFocus( true )
    );
  }
}
