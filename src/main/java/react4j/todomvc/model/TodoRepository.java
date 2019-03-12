package react4j.todomvc.model;

import arez.component.CollectionsUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;
import javax.annotation.Nonnull;
import spritz.Stream;
import spritz.Subject;

public final class TodoRepository
{
  private final Subject<String> add$ = Stream.subject( "add" );
  private final Subject<Todo> destroy$ = Stream.subject( "destroy" );
  private final Subject<Todo> toggle$ = Stream.subject( "toggle" );
  private final Subject<SaveAction> save$ = Stream.subject( "save" );
  private final Subject<Boolean> toggleAll$ = Stream.subject( "toggleAll" );
  private final Subject<Object> clearCompleted$ = Stream.subject( "clearCompleted" );
  /**
   * This stream consists of a list of operations that are applied to a list of Todos.
   */
  private final Subject<Function<List<Todo>, List<Todo>>> update$ = Stream.subject( "update" );
  @SuppressWarnings( "NullableProblems" )
  private final Stream<List<Todo>> todo$ =
    update$
      .startWith( Function.identity() )
      .<List<Todo>>scan( Function::apply, new ArrayList<>() )
      .map( todos -> CollectionsUtil.wrap( new ArrayList<>( todos ) ) )
      .publishReplayWithMaxSize( 1 )
      .refCount();
  private final Stream<Integer> totalCount$ = todo$.map( List::size );
  private final Stream<Integer> completedCount$ =
    todo$.map( todos -> (int) todos.stream().filter( Todo::isCompleted ).count() );

  TodoRepository()
  {
    //TODO: Need this subscription returned so can cancel it ... as well as all the other Stream above
    add$.map( title -> (Function<List<Todo>, List<Todo>>) todos -> {
      final ArrayList<Todo> results = new ArrayList<>( todos );
      results.add( new Todo( Long.toString( System.currentTimeMillis() ), title, false ) );
      return results;
    } ).subscribe( update$ );

    toggle$.map( todo -> (Function<List<Todo>, List<Todo>>) todos -> {
      todo.toggle();
      return todos;
    } ).subscribe( update$ );
    save$.map( action -> (Function<List<Todo>, List<Todo>>) todos -> {
      action.getTodo().setTitle( action.getNewTitle() );
      return todos;
    } ).subscribe( update$ );

    destroy$.map( todo -> (Function<List<Todo>, List<Todo>>) todos -> {
      final ArrayList<Todo> results = new ArrayList<>( todos );
      results.remove( todo );
      return results;
    } ).subscribe( update$ );

    toggleAll$.map( completed -> (Function<List<Todo>, List<Todo>>) todos ->
      todos.stream().peek( todo -> todo.setCompleted( completed ) ).collect( Collectors.toList() )
    ).subscribe( update$ );
    clearCompleted$.map( v -> (Function<List<Todo>, List<Todo>>) todos ->
      todos.stream().filter( todo -> !todo.isCompleted() ).collect( Collectors.toList() )
    ).subscribe( update$ );
  }

  public void addTodo( @Nonnull final String title )
  {
    add$.next( title );
  }

  public void toggle( @Nonnull final Todo todo )
  {
    toggle$.next( todo );
  }

  public void destroy( @Nonnull final Todo todo )
  {
    destroy$.next( todo );
  }

  public void toggleAll( final boolean completed )
  {
    toggleAll$.next( completed );
  }

  public void clearCompleted()
  {
    clearCompleted$.next( this );
  }

  public void save( @Nonnull final Todo todo, @Nonnull final String newTitle )
  {
    save$.next( new SaveAction( todo, newTitle ) );
  }

  @Nonnull
  public Stream<Integer> totalCount()
  {
    return totalCount$;
  }

  @Nonnull
  public Stream<Integer> completedCount()
  {
    return completedCount$;
  }

  @Nonnull
  Stream<List<Todo>> getTodos()
  {
    return todo$;
  }

  private static class SaveAction
  {
    @Nonnull
    private final Todo _todo;
    @Nonnull
    private final String _newTitle;

    SaveAction( @Nonnull final Todo todo, @Nonnull final String newTitle )
    {
      _todo = todo;
      _newTitle = newTitle;
    }

    @Nonnull
    Todo getTodo()
    {
      return _todo;
    }

    @Nonnull
    String getNewTitle()
    {
      return _newTitle;
    }
  }
}
