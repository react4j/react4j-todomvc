package react4j.todomvc.model;

import arez.annotations.Action;
import arez.annotations.ArezComponent;
import java.util.Objects;
import java.util.stream.Collectors;
import javax.annotation.Nonnull;

@SuppressWarnings( "Arez:UnmanagedComponentReference" )
@ArezComponent( nameIncludesId = false )
public abstract class TodoService
{
  @Nonnull
  private final TodoRepository _repository;

  TodoService( @Nonnull final TodoRepository repository )
  {
    _repository = Objects.requireNonNull( repository );
  }

  public void addTodo( @Nonnull final String title )
  {
    _repository.create( title, false );
  }

  @Action
  public void toggleAll( final boolean completed )
  {
    _repository.findAll().forEach( todo -> todo.setCompleted( completed ) );
  }

  @Action
  public void save( final Todo todo, final String newTitle )
  {
    todo.setTitle( newTitle );
  }

  @Action
  public void clearCompleted()
  {
    _repository.entities()
      //Find all completed
      .filter( Todo::isCompleted )
      .collect( Collectors.toList() )
      // Have to collect() to create new list so can mutate
      // by destroy in following line
      .forEach( _repository::destroy );
  }
}
