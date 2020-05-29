package react4j.todomvc.model;

import arez.annotations.ArezComponent;
import arez.annotations.ComponentDependency;
import arez.annotations.Feature;
import arez.annotations.Memoize;
import arez.annotations.Observable;
import arez.annotations.Observe;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

@ArezComponent( requireId = Feature.DISABLE, disposeNotifier = Feature.DISABLE )
public abstract class ViewService
{
  @Nonnull
  private final TodoRepository _todoRepository;
  @Nonnull
  private final BrowserLocation _browserLocation;

  ViewService( @Nonnull final TodoRepository todoRepository, @Nonnull final BrowserLocation browserLocation )
  {
    _todoRepository = Objects.requireNonNull( todoRepository );
    _browserLocation = Objects.requireNonNull( browserLocation );
  }

  @Observable
  @Nullable
  @ComponentDependency( action = ComponentDependency.Action.SET_NULL )
  public abstract Todo getTodoBeingEdited();

  public abstract void setTodoBeingEdited( @Nullable Todo todoBeingEdited );

  @Memoize
  @Nonnull
  public FilterMode getFilterMode()
  {
    final String location = _browserLocation.getLocation();
    if ( "active".equals( location ) )
    {
      return FilterMode.ACTIVE;
    }
    else if ( "completed".equals( location ) )
    {
      return FilterMode.COMPLETED;
    }
    else
    {
      return FilterMode.ALL;
    }
  }

  @Memoize
  @Nonnull
  public List<Todo> filteredTodos()
  {
    final FilterMode filterMode = getFilterMode();
    return _todoRepository.entities()
      .filter( todo -> todo.shouldShowTodo( filterMode ) )
      .collect( Collectors.toList() );
  }

  @Observe( mutation = true, nestedActionsAllowed = true )
  void cleanLocation()
  {
    final String browserLocation = _browserLocation.getBrowserLocation();
    if ( isValid( browserLocation ) )
    {
      _browserLocation.changeLocation( browserLocation );
    }
    else if ( isValid( _browserLocation.getLocation() ) )
    {
      _browserLocation.resetBrowserLocation();
    }
    else
    {
      _browserLocation.changeLocation( "" );
    }
  }

  private boolean isValid( @Nonnull final String location )
  {
    return "active".equals( location ) ||
           "completed".equals( location ) ||
           "".equals( location );
  }
}
