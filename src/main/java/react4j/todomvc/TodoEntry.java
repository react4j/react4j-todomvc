package react4j.todomvc;

import arez.annotations.CascadeDispose;
import arez.annotations.PostConstruct;
import elemental2.dom.HTMLInputElement;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import jsinterop.base.Js;
import react4j.ReactNode;
import react4j.annotations.ReactComponent;
import react4j.dom.events.FormEvent;
import react4j.dom.events.FormEventHandler;
import react4j.dom.events.KeyboardEvent;
import react4j.dom.events.KeyboardEventHandler;
import react4j.dom.proptypes.html.InputProps;
import react4j.todomvc.model.AppData;
import static react4j.dom.DOM.*;

@ReactComponent
abstract class TodoEntry
  extends SpritzComponent
{
  @CascadeDispose
  final CallbackAdapter<KeyboardEvent, KeyboardEventHandler> _handleNewTodoKeyDown = CallbackAdapter.keyboard();
  @CascadeDispose
  final CallbackAdapter<FormEvent, FormEventHandler> _handleChange = CallbackAdapter.form();
  @Nonnull
  private String _todoText = "";

  @PostConstruct
  final void postConstruct()
  {
    register( _handleNewTodoKeyDown.getStream().filter( e -> KeyCodes.ENTER_KEY == e.getKeyCode() ).forEach( event -> {
      event.preventDefault();
      final String val = _todoText.trim();
      if ( val.length() > 0 )
      {
        AppData.service.addTodo( val );
        setTodoText( "" );
      }
    } ) );
    register( _handleChange.getStream().forEach( event -> {
      final HTMLInputElement input = Js.cast( event.getTarget() );
      setTodoText( input.value );
    } ) );
  }

  private void setTodoText( @Nonnull final String todoText )
  {
    _todoText = todoText;
    scheduleRender( true );
  }

  @Nullable
  @Override
  protected ReactNode render()
  {
    return input( new InputProps()
                    .className( "new-todo" )
                    .placeHolder( "What needs to be done?" )
                    .value( _todoText )
                    .onKeyDown( _handleNewTodoKeyDown.getCallback() )
                    .onChange( _handleChange.getCallback() )
                    .autoFocus( true )
    );
  }
}
