package react4j.todomvc;

import arez.annotations.Action;
import arez.annotations.Memoize;
import arez.annotations.Observable;
import arez.annotations.PostConstruct;
import elemental2.dom.HTMLInputElement;
import java.util.Objects;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import jsinterop.base.Js;
import react4j.ReactNode;
import react4j.annotations.PostUpdate;
import react4j.annotations.Prop;
import react4j.annotations.ReactComponent;
import react4j.annotations.Render;
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

@ReactComponent( type = ReactComponent.Type.TRACKING )
abstract class TodoItem
{
  @Nonnull
  private final TodoRepository _todoRepository;
  @Nonnull
  private final TodoService _todoService;
  @Nonnull
  private final ViewService _viewService;
  @Nullable
  private HTMLInputElement _editField;
  private boolean _isEditing;

  TodoItem( @Nonnull final TodoRepository todoRepository,
            @Nonnull final TodoService todoService,
            @Nonnull final ViewService viewService )
  {
    _todoRepository = Objects.requireNonNull( todoRepository );
    _todoService = Objects.requireNonNull( todoService );
    _viewService = Objects.requireNonNull( viewService );
  }

  @Prop( immutable = true )
  @Nonnull
  abstract Todo getTodo();

  @Observable
  abstract String getEditText();

  abstract void setEditText( @Nonnull String editText );

  @Memoize
  boolean isTodoBeingEdited()
  {
    return _viewService.getTodoBeingEdited() == getTodo();
  }

  @PostConstruct
  void postConstruct()
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

  @Action( reportParameters = false )
  void onSubmitTodo( @Nonnull final Todo todo )
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

  @Action( reportParameters = false )
  void onEdit( @Nonnull final Todo todo )
  {
    _viewService.setTodoBeingEdited( todo );
    resetEditText( todo );
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
  @PostUpdate
  void postUpdate()
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

  @Nonnull
  @Render
  ReactNode render()
  {
    final Todo todo = getTodo();
    final boolean completed = todo.isCompleted();
    return li( new HtmlProps().className( completed ? "checked" : null, isTodoBeingEdited() ? "editing" : null ),
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
                        .value( getEditText() )
                        .onBlur( e -> onSubmitTodo( todo ) )
                        .onChange( this::handleChange )
                        .onKeyDown( e -> handleKeyDown( e, todo ) )
               )
    );
  }
}
