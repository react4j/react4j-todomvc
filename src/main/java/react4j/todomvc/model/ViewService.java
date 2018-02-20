package react4j.todomvc.model;

import elemental2.dom.DomGlobal;
import elemental2.dom.Event;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import react4j.core.Procedure;

public final class ViewService
{
  private final ArrayList<Procedure> _subscribers = new ArrayList<>();
  @Nonnull
  private final TodoRepository _todoRepository;
  @Nullable
  private Todo _todoBeingEdited;

  ViewService( @Nonnull final TodoRepository todoRepository )
  {
    _todoRepository = Objects.requireNonNull( todoRepository );
    DomGlobal.window.addEventListener( "hashchange", this::onHashChangeEvent, false );
    todoRepository.subscribe( this::updateTodoBeingEdited );
  }

  @Nullable
  public Todo getTodoBeingEdited()
  {
    return _todoBeingEdited;
  }

  public void setTodoBeingEdited( @Nullable final Todo todoBeingEdited )
  {
    _todoBeingEdited = todoBeingEdited;
    notifySubscribers();
  }

  @Nonnull
  public FilterMode getFilterMode()
  {
    final String location = getHash();
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

  public List<Todo> filteredTodos()
  {
    final FilterMode filterMode = getFilterMode();
    return _todoRepository
      .entities()
      .filter( todo -> todo.shouldShowTodo( filterMode ) )
      .collect( Collectors.toList() );
  }

  private void updateTodoBeingEdited()
  {
    final Todo todoBeingEdited = getTodoBeingEdited();
    if ( null != todoBeingEdited && !_todoRepository.contains( todoBeingEdited ) )
    {
      setTodoBeingEdited( null );
    }
  }

  private boolean isValid( @Nonnull final String location )
  {
    return "active".equals( location ) ||
           "completed".equals( location ) ||
           "".equals( location );
  }

  private void onHashChangeEvent( @Nonnull final Event e )
  {
    e.preventDefault();
    final String browserLocation = getHash();
    if ( isValid( browserLocation ) )
    {
      notifySubscribers();
    }
    else
    {
      setHash( "" );
    }
  }

  @Nonnull
  private String getHash()
  {
    final String hash = DomGlobal.window.location.getHash();
    return null == hash ? "" : hash.substring( 1 );
  }

  private void setHash( @Nonnull final String hash )
  {
    if ( 0 == hash.length() )
    {
      /*
       * This code is needed to remove the stray #.
       * See https://stackoverflow.com/questions/1397329/how-to-remove-the-hash-from-window-location-url-with-javascript-without-page-r/5298684#5298684
       */
      final String url = DomGlobal.window.location.getPathname() + DomGlobal.window.location.getSearch();
      DomGlobal.window.history.pushState( "", DomGlobal.document.title, url );
    }
    else
    {
      DomGlobal.window.location.setHash( hash );
    }
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
