package react4j.todomvc;

import arez.annotations.Action;
import arez.annotations.Computed;
import arez.annotations.Observable;
import elemental2.dom.HTMLInputElement;
import java.util.Objects;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import jsinterop.annotations.JsOverlay;
import jsinterop.annotations.JsPackage;
import jsinterop.annotations.JsType;
import jsinterop.base.Js;
import react4j.annotations.EventHandler;
import react4j.annotations.ReactComponent;
import react4j.arez.ReactArezComponent;
import react4j.core.BaseContext;
import react4j.core.BaseProps;
import react4j.core.BaseState;
import react4j.core.ReactNode;
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
  extends ReactArezComponent<TodoItem.Props, BaseContext>
{
  @Nullable
  private HTMLInputElement _editField;

  @JsType( isNative = true, namespace = JsPackage.GLOBAL, name = "Object" )
  static class Props
    extends BaseProps
  {
    Todo todo;

    @JsOverlay
    static Props create( @Nonnull final Todo todo )
    {
      final Props props = new Props();
      props.key = todo.getId();
      props.todo = todo;
      return props;
    }
  }

  @Nonnull
  static ReactNode create( @Nonnull final TodoItem.Props props )
  {
    return _create( Objects.requireNonNull( props ) );
  }

  private boolean _isEditing;
  private String _editText;

  @Observable
  String getEditText()
  {
    return _editText;
  }

  void setEditText( @Nonnull final String editText )
  {
    _editText = editText;
  }

  @Computed
  boolean isTodoBeingEdited()
  {
    return AppData.viewService.getTodoBeingEdited() == props().todo;
  }

  @Override
  protected void postConstruct()
  {
    resetEditText();
  }

  @Action
  void resetEditText()
  {
    setEditText( props().todo.getTitle() );
  }

  @EventHandler( KeyboardEventHandler.class )
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

  @EventHandler( FocusEventHandler.class )
  void onSubmitTodo()
  {
    final String val = getEditText();
    final Props props = props();
    if ( null != val && !val.isEmpty() )
    {
      AppData.service.save( props.todo, val );
      AppData.viewService.setTodoBeingEdited( null );
      setEditText( val );
    }
    else
    {
      AppData.model.destroy( props().todo );
    }
  }

  @EventHandler( FormEventHandler.class )
  void onToggle()
  {
    props().todo.toggle();
  }

  @EventHandler( MouseEventHandler.class )
  void onEdit()
  {
    AppData.viewService.setTodoBeingEdited( props().todo );
    resetEditText();
  }

  @EventHandler( MouseEventHandler.class )
  void onDestroy()
  {
    AppData.model.destroy( props().todo );
  }

  private void onCancel()
  {
    resetEditText();
    AppData.viewService.setTodoBeingEdited( null );
  }

  @EventHandler( FormEventHandler.class )
  void handleChange( @Nonnull final FormEvent event )
  {
    if ( isTodoBeingEdited() )
    {
      final HTMLInputElement input = Js.cast( event.getTarget() );
      setEditText( input.value );
    }
  }

  @Action( reportParameters = false )
  @Override
  protected void componentDidUpdate( @Nullable final Props prevProps, @Nullable final BaseState prevState )
  {
    super.componentDidUpdate( prevProps, prevState );
    final boolean todoBeingEdited = isTodoBeingEdited();
    if ( !_isEditing && todoBeingEdited )
    {
      _isEditing = true;
      resetEditText();
      assert null != _editField;
      _editField.focus();
      _editField.select();
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
    final Props props = props();
    final boolean completed = props.todo.isCompleted();
    return li( new HtmlProps().className( classesFor( completed, isTodoBeingEdited() ) ),
               div( new HtmlProps().className( "view" ),
                    input( new InputProps()
                             .className( "toggle" )
                             .type( InputType.checkbox )
                             .checked( completed )
                             .onChange( _onToggle( this ) )
                    ),
                    label( new LabelProps().onDoubleClick( _onEdit( this ) ),
                           props.todo.getTitle() ),
                    button( new BtnProps()
                              .className( "destroy" )
                              .onClick( _onDestroy( this ) )
                    )
               ),
               input( new InputProps()
                        .ref( e -> _editField = (HTMLInputElement) e )
                        .className( "edit" )
                        .defaultValue( getEditText() )
                        .onBlur( _onSubmitTodo( this ) )
                        .onChange( _handleChange( this ) )
                        .onKeyDown( _handleKeyDown( this ) )
               )
    );
  }

  private static String classesFor( final boolean completed, final boolean editing )
  {
    String cls = completed ? "completed" : "";
    if ( editing )
    {
      if ( !cls.isEmpty() )
      {
        cls += " ";
      }
      cls += "editing";
    }
    return cls;
  }
}
