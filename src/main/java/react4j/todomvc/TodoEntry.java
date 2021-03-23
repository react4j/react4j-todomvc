package react4j.todomvc;

import akasha.HTMLInputElement;
import arez.annotations.Action;
import arez.annotations.Observable;
import java.util.Objects;
import javax.annotation.Nonnull;
import jsinterop.base.Js;
import react4j.ReactNode;
import react4j.annotations.Render;
import react4j.annotations.View;
import react4j.dom.events.FormEvent;
import react4j.dom.events.KeyboardEvent;
import react4j.dom.proptypes.html.InputProps;
import react4j.todomvc.model.TodoService;
import static react4j.dom.DOM.*;

@View( type = View.Type.TRACKING )
abstract class TodoEntry
{
  @Nonnull
  private final TodoService _todoService;
  private String _todoText = "";

  TodoEntry( @Nonnull final TodoService todoService )
  {
    _todoService = Objects.requireNonNull( todoService );
  }

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
      _todoService.addTodo( val );
      setTodoText( "" );
    }
  }

  @Action( reportParameters = false )
  void handleChange( @Nonnull final FormEvent event )
  {
    final HTMLInputElement input = Js.cast( event.getTarget() );
    setTodoText( input.value );
  }

  @Render
  @Nonnull
  ReactNode render()
  {
    return input( new InputProps()
                    .className( "new-todo" )
                    .placeHolder( "What needs to be done?" )
                    .value( getTodoText() )
                    .onKeyDown( this::handleNewTodoKeyDown )
                    .onChange( this::handleChange )
                    .autoFocus()
    );
  }
}
