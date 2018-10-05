package react4j.todomvc.model;

import arez.Disposable;
import arez.annotations.ArezComponent;
import arez.annotations.Computed;
import arez.annotations.Observable;
import arez.annotations.Observed;
import arez.browserlocation.BrowserLocation;
import arez.component.CollectionsUtil;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import javax.inject.Singleton;

@Singleton
@ArezComponent
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
  public abstract Todo getTodoBeingEdited();

  public abstract void setTodoBeingEdited( @Nullable Todo todoBeingEdited );

  @Computed
  @Nonnull
  public FilterMode getFilterMode()
  {
    final String location = _browserLocation.getLocation();
    if ( isValid( location ) )
    {
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
    else
    {
      return FilterMode.ALL;
    }
  }

  @Computed
  public List<Todo> filteredTodos()
  {
    final FilterMode filterMode = getFilterMode();
    return CollectionsUtil.asList( _todoRepository.entities().filter( todo -> todo.shouldShowTodo( filterMode ) ) );
  }

  @Observed( mutation = true )
  void updateTodoBeingEdited()
  {
    final Todo todoBeingEdited = getTodoBeingEdited();
    if ( null != todoBeingEdited && Disposable.isDisposed( todoBeingEdited ) )
    {
      setTodoBeingEdited( null );
    }
  }

  @Observed( mutation = true, nestedActionsAllowed = true )
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
