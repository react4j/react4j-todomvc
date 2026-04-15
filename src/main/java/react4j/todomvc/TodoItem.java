package react4j.todomvc;

import akasha.HTMLInputElement;
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
import react4j.dom.events.FormEvent;
import react4j.dom.events.KeyboardEvent;
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
{
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

  private boolean isTodoBeingEdited()
  {
    return AppData.viewService.getTodoBeingEdited() == _todo;
  }

  @PostConstruct
  void postConstruct()
  {
    _editText = _todo.getTitle();
    _todo.subscribe( this::scheduleRender );
  }

  private void handleKeyDown( @Nonnull final KeyboardEvent event )
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

  private void onSubmitTodo()
  {
    if ( null != _editText && !_editText.isEmpty() )
    {
      AppData.service.save( _todo, _editText );
      AppData.viewService.setTodoBeingEdited( null );
      setEditText( _editText );
    }
    else
    {
      AppData.service.destroy( _todo );
    }
  }

  private void onToggle()
  {
    AppData.service.toggle( _todo );
  }

  private void onEdit()
  {
    AppData.viewService.setTodoBeingEdited( _todo );
    resetEditTextAndReRender();
  }

  private void onDestroy()
  {
    AppData.service.destroy( _todo );
  }

  private void onCancel()
  {
    AppData.viewService.setTodoBeingEdited( null );
    resetEditTextAndReRender();
  }

  private void handleChange( @Nonnull final FormEvent event )
  {
    if ( isTodoBeingEdited() )
    {
      final HTMLInputElement input = Js.cast( event.getTarget() );
      setEditText( input.value );
    }
  }

  @PostUpdate
  void postUpdate()
  {
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

  @Render
  @Nonnull
  ReactNode render()
  {
    final boolean completed = _todo.isCompleted();
    return li( new HtmlProps().className( completed ? "checked" : null, isTodoBeingEdited() ? "editing" : null ),
               div( new HtmlProps().className( "view" ),
                    input( new InputProps()
                             .className( "toggle" )
                             .type( InputType.checkbox )
                             .checked( completed )
                             .onChange( e -> onToggle() )
                    ),
                    label( new LabelProps().onDoubleClick( e -> onEdit() ), _todo.getTitle() ),
                    button( new BtnProps().className( "destroy" ).onClick( e -> onDestroy() )
                    )
               ),
               input( new InputProps()
                        .ref( e -> _editField = (HTMLInputElement) e )
                        .className( "edit" )
                        .value( _editText )
                        .onBlur( e -> onSubmitTodo() )
                        .onChange( this::handleChange )
                        .onKeyDown( this::handleKeyDown )
               )
    );
  }
}
