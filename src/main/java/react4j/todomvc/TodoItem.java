package react4j.todomvc;

import elemental2.dom.HTMLInputElement;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import jsinterop.base.Js;
import jsinterop.base.JsPropertyMap;
import react4j.Component;
import react4j.ReactNode;
import react4j.annotations.Callback;
import react4j.annotations.Prop;
import react4j.annotations.ReactComponent;
import react4j.dom.events.FocusEventHandler;
import react4j.dom.events.FormEvent;
import react4j.dom.events.FormEventHandler;
import react4j.dom.events.KeyboardEvent;
import react4j.dom.events.KeyboardEventHandler;
import react4j.dom.events.MouseEventHandler;
import react4j.dom.proptypes.html.BtnProps;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.dom.proptypes.html.InputProps;
import react4j.dom.proptypes.html.LabelProps;
import react4j.dom.proptypes.html.attributeTypes.InputType;
import react4j.todomvc.model.AppData;
import react4j.todomvc.model.Todo;
import static react4j.dom.DOM.*;
import static react4j.todomvc.TodoItem_.*;

@ReactComponent
abstract class TodoItem
  extends Component
{
  @Nullable
  private HTMLInputElement _editField;
  private boolean _isEditing;
  private String _editText;

  @Prop
  abstract Todo getTodo();

  private void setEditText( @Nonnull final String editText )
  {
    _editText = editText;
    scheduleRender( true );
  }

  private boolean isTodoBeingEdited()
  {
    return AppData.viewService.getTodoBeingEdited() == getTodo();
  }

  @Override
  protected void postConstruct()
  {
    resetEditText();
  }

  private void resetEditText()
  {
    _editText = getTodo().getTitle();
  }

  private void resetEditTextAndReRender()
  {
    resetEditText();
    scheduleRender( true );
  }

  @Callback( KeyboardEventHandler.class )
  void handleKeyDown( @Nonnull final KeyboardEvent event )
  {
    if ( KeyCodes.ESCAPE_KEY == event.getWhich() )
    {
      onCancel();
    }
    else if ( KeyCodes.ENTER_KEY == event.getWhich() )
    {
      onSubmitTodo();
    }
  }

  @Callback( FocusEventHandler.class )
  void onSubmitTodo()
  {
    if ( null != _editText && !_editText.isEmpty() )
    {
      AppData.service.save( getTodo(), _editText );
      AppData.viewService.setTodoBeingEdited( null );
      setEditText( _editText );
    }
    else
    {
      AppData.service.destroy( getTodo() );
    }
  }

  @Callback( FormEventHandler.class )
  void onToggle()
  {
    AppData.service.toggle( getTodo() );
  }

  @Callback( MouseEventHandler.class )
  void onEdit()
  {
    AppData.viewService.setTodoBeingEdited( getTodo() );
    resetEditTextAndReRender();
  }

  @Callback( MouseEventHandler.class )
  void onDestroy()
  {
    AppData.service.destroy( getTodo() );
  }

  private void onCancel()
  {
    AppData.viewService.setTodoBeingEdited( null );
    resetEditTextAndReRender();
  }

  @Callback( FormEventHandler.class )
  void handleChange( @Nonnull final FormEvent event )
  {
    if ( isTodoBeingEdited() )
    {
      final HTMLInputElement input = Js.cast( event.getTarget() );
      setEditText( input.value );
    }
  }

  @Override
  protected void componentDidUpdate( @Nullable final JsPropertyMap<Object> prevProps,
                                     @Nullable final JsPropertyMap<Object> prevState )
  {
    super.componentDidUpdate( prevProps, prevState );
    final boolean todoBeingEdited = isTodoBeingEdited();
    if ( !_isEditing && todoBeingEdited )
    {
      _isEditing = true;
      assert null != _editField;
      _editField.focus();
      _editField.select();
      resetEditTextAndReRender();
    }
    else if ( _isEditing && !todoBeingEdited )
    {
      _isEditing = false;
    }
  }

  @Nullable
  @Override
  protected ReactNode render()
  {
    final Todo todo = getTodo();
    final boolean completed = todo.isCompleted();
    return li( new HtmlProps().className( completed ? "completed" : null, isTodoBeingEdited() ? "editing" : null ),
               div( new HtmlProps().className( "view" ),
                    input( new InputProps()
                             .className( "toggle" )
                             .type( InputType.checkbox )
                             .checked( completed )
                             .onChange( _onToggle( this ) )
                    ),
                    label( new LabelProps().onDoubleClick( _onEdit( this ) ),
                           todo.getTitle() ),
                    button( new BtnProps()
                              .className( "destroy" )
                              .onClick( _onDestroy( this ) )
                    )
               ),
               input( new InputProps()
                        .ref( e -> _editField = (HTMLInputElement) e )
                        .className( "edit" )
                        .defaultValue( _editText )
                        .onBlur( _onSubmitTodo( this ) )
                        .onChange( _handleChange( this ) )
                        .onKeyDown( _handleKeyDown( this ) )
               )
    );
  }
}
