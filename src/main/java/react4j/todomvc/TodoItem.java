package react4j.todomvc;

import arez.annotations.Action;
import arez.annotations.Memoize;
import arez.annotations.Observable;
import elemental2.dom.HTMLInputElement;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import javax.inject.Inject;
import jsinterop.base.Js;
import react4j.ReactNode;
import react4j.annotations.Prop;
import react4j.annotations.ReactComponent;
import react4j.arez.ReactArezComponent;
import react4j.dom.events.FormEvent;
import react4j.dom.events.KeyboardEvent;
import react4j.dom.proptypes.html.BtnProps;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.dom.proptypes.html.InputProps;
import react4j.dom.proptypes.html.LabelProps;
import react4j.dom.proptypes.html.attributeTypes.InputType;
import react4j.todomvc.model.Todo;
import react4j.todomvc.model.TodoRepository;
import react4j.todomvc.model.TodoService;
import react4j.todomvc.model.ViewService;
import static react4j.dom.DOM.*;

@ReactComponent
abstract class TodoItem
  extends ReactArezComponent
{
  @Inject
  TodoRepository _todoRepository;
  @Inject
  TodoService _todoService;
  @Inject
  ViewService _viewService;

  @Nullable
  private HTMLInputElement _editField;
  private boolean _isEditing;
  private String _editText;

  @Prop
  abstract Todo getTodo();

  @Observable
  String getEditText()
  {
    return _editText;
  }

  void setEditText( @Nonnull final String editText )
  {
    _editText = editText;
  }

  @Memoize
  boolean isTodoBeingEdited()
  {
    return _viewService.getTodoBeingEdited() == getTodo();
  }

  @Override
  protected void postConstruct()
  {
    resetEditText( getTodo() );
  }

  @Action
  void resetEditText( @Nonnull final Todo todo )
  {
    setEditText( todo.getTitle() );
  }

  private void handleKeyDown( @Nonnull final KeyboardEvent event, @Nonnull final Todo todo )
  {
    if ( KeyCodes.ESCAPE_KEY == event.getWhich() )
    {
      onCancel( todo );
    }
    else if ( KeyCodes.ENTER_KEY == event.getWhich() )
    {
      onSubmitTodo( todo );
    }
  }

  private void onSubmitTodo( @Nonnull final Todo todo )
  {
    final String val = getEditText();
    if ( null != val && !val.isEmpty() )
    {
      _todoService.save( todo, val );
      _viewService.setTodoBeingEdited( null );
      setEditText( val );
    }
    else
    {
      _todoRepository.destroy( todo );
    }
  }

  private void onEdit( @Nonnull final Todo todo )
  {
    _viewService.setTodoBeingEdited( todo );
    resetEditText(todo);
  }

  @Action( reportParameters = false )
  void onCancel( @Nonnull final Todo todo )
  {
    resetEditText( todo );
    _viewService.setTodoBeingEdited( null );
  }

  @Action( reportParameters = false )
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
  protected void componentDidUpdate()
  {
    final boolean todoBeingEdited = isTodoBeingEdited();
    if ( !_isEditing && todoBeingEdited )
    {
      _isEditing = true;
      resetEditText( getTodo() );
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
    final Todo todo = getTodo();
    final boolean completed = todo.isCompleted();
    return li( new HtmlProps().className( completed ? "completed" : null, isTodoBeingEdited() ? "editing" : null ),
               div( new HtmlProps().className( "view" ),
                    input( new InputProps()
                             .className( "toggle" )
                             .type( InputType.checkbox )
                             .checked( completed )
                             .onChange( e -> todo.toggle() )
                    ),
                    label( new LabelProps().onDoubleClick( e -> onEdit( todo ) ), todo.getTitle() ),
                    button( new BtnProps().className( "destroy" ).onClick( e -> _todoRepository.destroy( todo ) )
                    )
               ),
               input( new InputProps()
                        .ref( e -> _editField = (HTMLInputElement) e )
                        .className( "edit" )
                        .defaultValue( getEditText() )
                        .onBlur( e -> onSubmitTodo( todo ) )
                        .onChange( this::handleChange )
                        .onKeyDown( e -> handleKeyDown( e, todo ) )
               )
    );
  }
}
