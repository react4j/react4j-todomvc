package react4j.todomvc.model;

import elemental2.dom.DomGlobal;
import elemental2.dom.Event;
import java.util.List;
import java.util.stream.Collectors;
import javax.annotation.Nonnull;
import spritz.Stream;
import spritz.Subject;

public final class ViewService
{
  private final Stream<List<Todo>> filteredTodo$;
  private final Subject<FilterMode> filterMode$;

  ViewService( @Nonnull final TodoRepository todoRepository )
  {
    DomGlobal.window.addEventListener( "hashchange", this::onHashChangeEvent, false );

    filterMode$ = Stream.subject( "filterMode" );
    computeFilterMode();
    filteredTodo$ =
      todoRepository.getTodos()
        .map( todos -> todos.stream()
          .filter( todo -> todo.shouldShowTodo( FilterMode.ALL ) )
          .collect( Collectors.toList() ) );
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

  private void onHashChangeEvent( @Nonnull final Event e )
  {
    e.preventDefault();
    computeFilterMode();
  }

  private void computeFilterMode()
  {
    final String hash = DomGlobal.window.location.getHash();
    final String location = null == hash ? "" : hash.substring( 1 );
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
      if ( null != hash )
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
}
