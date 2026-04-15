package react4j.todomvc;

import akasha.HTMLInputElement;
import arez.annotations.CascadeDispose;
import arez.annotations.PostConstruct;
import java.util.Objects;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import jsinterop.base.Js;
import react4j.ReactNode;
import react4j.annotations.Input;
import react4j.annotations.PostUpdate;
import react4j.annotations.Render;
import react4j.annotations.ScheduleRender;
import react4j.annotations.View;
import react4j.dom.events.FocusEvent;
import react4j.dom.events.FocusEventHandler;
import react4j.dom.events.FormEvent;
import react4j.dom.events.FormEventHandler;
import react4j.dom.events.KeyboardEvent;
import react4j.dom.events.KeyboardEventHandler;
import react4j.dom.events.MouseEvent;
import react4j.dom.events.MouseEventHandler;
import react4j.dom.proptypes.html.BtnProps;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.dom.proptypes.html.InputProps;
import react4j.dom.proptypes.html.LabelProps;
import react4j.dom.proptypes.html.attributeTypes.InputType;
import react4j.todomvc.model.AppData;
import react4j.todomvc.model.Todo;
import static react4j.dom.DOM.*;

@View
abstract class TodoItem
  extends SpritzComponent
{
  @CascadeDispose
  final CallbackAdapter<FormEvent, FormEventHandler> _handleChange = CallbackAdapter.form();
  @CascadeDispose
  final CallbackAdapter<FormEvent, FormEventHandler> _handleToggle = CallbackAdapter.form();
  @CascadeDispose
  final CallbackAdapter<MouseEvent, MouseEventHandler> _handleEdit = CallbackAdapter.mouse();
  @CascadeDispose
  final CallbackAdapter<MouseEvent, MouseEventHandler> _handleDestroy = CallbackAdapter.mouse();
  @CascadeDispose
  final CallbackAdapter<FocusEvent, FocusEventHandler> _handleBlur = CallbackAdapter.focus();
  @CascadeDispose
  final CallbackAdapter<KeyboardEvent, KeyboardEventHandler> _handleKeyDown = CallbackAdapter.keyboard();
  @Nonnull
  private final Todo _todo;
  @Nullable
  private HTMLInputElement _editField;
  private boolean _isEditing;
  private String _editText;

  TodoItem( @Input @Nonnull final Todo todo )
  {
    _todo = Objects.requireNonNull( todo );
  }

  @ScheduleRender
  abstract void scheduleRender();

  private void setEditText( @Nonnull final String editText )
  {
    _editText = editText;
    scheduleRender();
  }

  private void resetEditTextAndReRender()
  {
    setEditText( _todo.getTitle() );
  }

  @PostConstruct
  void postConstruct()
  {
    _editText = _todo.getTitle();
    _handleChange.stream().filter( e -> _todo.isEditing() ).forEach( event -> {
      final HTMLInputElement input = Js.cast( event.getTarget() );
      setEditText( input.value );
    } );
    _handleToggle.stream().forEach( event -> AppData.service.toggle( _todo ) );
    _handleEdit.stream().forEach( e -> {
      AppData.service.setTodoBeingEdited( _todo );
      resetEditTextAndReRender();
    } );
    _handleDestroy.stream().forEach( e -> AppData.service.destroy( _todo ) );
    _handleBlur.stream().forEach( e -> onSubmitTodo() );
    _handleKeyDown.stream().filter( e -> KeyCodes.ESCAPE_KEY == e.getWhich() ).forEach( e -> {
      AppData.service.setTodoBeingEdited( null );
      resetEditTextAndReRender();
    } );
    _handleKeyDown.stream()
      .filter( e -> KeyCodes.ENTER_KEY == e.getWhich() )
      .forEach( e -> onSubmitTodo() );
  }

  private void onSubmitTodo()
  {
    if ( null != _editText && !_editText.isEmpty() )
    {
      AppData.service.save( _todo, _editText );
      AppData.service.setTodoBeingEdited( null );
      setEditText( _editText );
    }
    else
    {
      AppData.service.destroy( _todo );
    }
  }

  @PostUpdate
  void postUpdate()
  {
    final boolean todoBeingEdited = _todo.isEditing();
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

  @Render
  @Nonnull
  ReactNode render()
  {
    final boolean completed = _todo.isCompleted();
    return li( new HtmlProps().className( completed ? "checked" : null, _todo.isEditing() ? "editing" : null ),
               div( new HtmlProps().className( "view" ),
                    input( new InputProps()
                             .className( "toggle" )
                             .type( InputType.checkbox )
                             .checked( completed )
                             .onChange( _handleToggle.callback() )
                    ),
                    label( new LabelProps().onDoubleClick( _handleEdit.callback() ), _todo.getTitle() ),
                    button( new BtnProps().className( "destroy" ).onClick( _handleDestroy.callback() ) )
               ),
               input( new InputProps()
                        .ref( e -> _editField = (HTMLInputElement) e )
                        .className( "edit" )
                        .value( _editText )
                        .onBlur( e -> onSubmitTodo() )
                        .onChange( _handleChange.callback() )
                        .onKeyDown( _handleKeyDown.callback() )
               )
    );
  }
}
