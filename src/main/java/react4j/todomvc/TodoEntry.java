package react4j.todomvc;

import elemental2.dom.HTMLInputElement;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import jsinterop.base.Js;
import jsinterop.base.JsPropertyMap;
import react4j.annotations.Callback;
import react4j.annotations.ReactComponent;
import react4j.annotations.State;
import react4j.core.Component;
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
  extends Component
{
  @Override
  protected void postConstruct()
  {
    setInitialState( JsPropertyMap.of( "todoText", "" ) );
  }

  @State
  abstract String getTodoText();

  abstract void setTodoText( @Nonnull final String todoText );

  @Callback( KeyboardEventHandler.class )
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

  @Callback( FormEventHandler.class )
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
