package react4j.todomvc.model;

import akasha.Event;
import akasha.Location;
import akasha.WindowGlobal;
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
    WindowGlobal.addHashchangeListener(  this::onHashChangeEvent, false );

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
    final Location location = WindowGlobal.location();
    final String place = location.hash.substring( 1 );
    if ( "active".equals( place ) )
    {
      filterMode$.next( FilterMode.ACTIVE );
    }
    else if ( "completed".equals( place ) )
    {
      filterMode$.next( FilterMode.COMPLETED );
    }
    else
    {
      /*
       * This code is needed to remove the stray #.
       * See https://stackoverflow.com/questions/1397329/how-to-remove-the-hash-from-window-location-url-with-javascript-without-page-r/5298684#5298684
       */
      WindowGlobal.history().pushState( "", WindowGlobal.document().title, location.pathname + location.search );
      filterMode$.next( FilterMode.ALL );
    }
  }
}
