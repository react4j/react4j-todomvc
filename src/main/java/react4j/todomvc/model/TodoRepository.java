package react4j.todomvc.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import javax.annotation.Nonnull;
import react4j.Procedure;

public final class TodoRepository
{
  private final ArrayList<Todo> _entities = new ArrayList<>();
  private final ArrayList<Procedure> _subscribers = new ArrayList<>();

  private boolean isEmpty()
  {
    return 0 == totalCount();
  }

  public boolean isNotEmpty()
  {
    return !isEmpty();
  }

  public int totalCount()
  {
    return (int) entities().count();
  }

  private int activeCount()
  {
    return (int) entities().filter( todo -> !todo.isCompleted() ).count();
  }

  public int completedCount()
  {
    return totalCount() - activeCount();
  }

  boolean contains( final Todo todo )
  {
    return _entities.contains( todo );
  }

  Stream<Todo> entities()
  {
    return _entities.stream();
  }

  public void addTodo( @Nonnull final String title )
  {
    _entities.add( new Todo( Long.toString( new Date().getTime() ), title, false ) );
    notifySubscribers();
  }

  public void destroy( @Nonnull final Todo todo )
  {
    _entities.remove( todo );
    notifySubscribers();
  }

  public void toggleAll( final boolean completed )
  {
    entities().forEach( todo -> todo.setCompleted( completed ) );
    notifySubscribers();
  }

  public void save( final Todo todo, final String newTitle )
  {
    todo.setTitle( newTitle );
    notifySubscribers();
  }

  public void toggle( final Todo todo )
  {
    todo.toggle();
    notifySubscribers();
  }

  public void clearCompleted()
  {
    entities()
      //Find all completed
      .filter( Todo::isCompleted )
      .collect( Collectors.toList() )
      // Have to collect() to create new list so can mutate
      // by destroy in following line
      .forEach( this::destroy );
  }

  public void subscribe( @Nonnull final Procedure subscriber )
  {
    _subscribers.add( subscriber );
  }

  private void notifySubscribers()
  {
    _subscribers.forEach( Procedure::call );
  }
}
