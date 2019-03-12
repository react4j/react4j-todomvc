package react4j.todomvc.model;

import elemental2.dom.DomGlobal;
import elemental2.dom.Event;
import java.util.List;
import java.util.stream.Collectors;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import spritz.Stream;
import spritz.Subject;

public final class ViewService
{
  @Nullable
  private Todo _todoBeingEdited;
  private final Stream<List<Todo>> filteredTodo$;
  private final Subject<FilterMode> filterMode$;

  ViewService( @Nonnull final TodoRepository todoRepository )
  {
    DomGlobal.window.addEventListener( "hashchange", this::onHashChangeEvent, false );
    //TODO: todoRepository.subscribe( this::updateTodoBeingEdited );

    filterMode$ = Stream.subject( "filterMode" );
    computeFilterMode();
    filteredTodo$ =
      todoRepository.getTodos()
        .map( todos -> todos.stream()
          .filter( todo -> todo.shouldShowTodo( FilterMode.ALL ) )
          .collect( Collectors.toList() ) );
  }

  @Nullable
  public Todo getTodoBeingEdited()
  {
    return _todoBeingEdited;
  }

  public void setTodoBeingEdited( @Nullable final Todo todoBeingEdited )
  {
    _todoBeingEdited = todoBeingEdited;
    //TODO: notifySubscribers();
  }

  @Nonnull
  public Stream<FilterMode> getFilterMode()
  {
    return filterMode$;
  }

  @Nonnull
  public Stream<List<Todo>> filteredTodos()
  {
    return filteredTodo$;
  }

  /*
  TODO
  private void updateTodoBeingEdited()
  {
    final Todo todoBeingEdited = getTodoBeingEdited();
    if ( null != todoBeingEdited && !_todoRepository.contains( todoBeingEdited ) )
    {
      setTodoBeingEdited( null );
    }
  }
  */

  private void onHashChangeEvent( @Nonnull final Event e )
  {
    e.preventDefault();
    computeFilterMode();
  }

  private void computeFilterMode()
  {
    final String location = getHash();
    if ( "active".equals( location ) )
    {
      filterMode$.next( FilterMode.ACTIVE );
    }
    else if ( "completed".equals( location ) )
    {
      filterMode$.next( FilterMode.COMPLETED );
    }
    else
    {
      if ( !location.equals( "" ) )
      {
        /*
         * This code is needed to remove the stray #.
         * See https://stackoverflow.com/questions/1397329/how-to-remove-the-hash-from-window-location-url-with-javascript-without-page-r/5298684#5298684
         */
        final String url = DomGlobal.window.location.getPathname() + DomGlobal.window.location.getSearch();
        DomGlobal.window.history.pushState( "", DomGlobal.document.title, url );
      }
      filterMode$.next( FilterMode.ALL );
    }
  }

  @Nonnull
  private String getHash()
  {
    final String hash = DomGlobal.window.location.getHash();
    return null == hash ? "" : hash.substring( 1 );
  }
}
