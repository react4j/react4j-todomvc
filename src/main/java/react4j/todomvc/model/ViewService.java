package react4j.todomvc.model;

import java.util.List;
import java.util.stream.Collectors;
import javax.annotation.Nonnull;
import jsinterop.annotations.JsFunction;
import jsinterop.annotations.JsMethod;
import jsinterop.annotations.JsPackage;
import jsinterop.annotations.JsProperty;
import jsinterop.annotations.JsType;
import spritz.Stream;
import spritz.Subject;

public final class ViewService
{
  @JsFunction
  private interface EventListener
  {
    void handleEvent( Event event );
  }

  @JsType( isNative = true, name = "Event", namespace = JsPackage.GLOBAL )
  private static class Event
  {
    @JsMethod
    native void preventDefault();
  }

  @JsType( isNative = true, name = "Location", namespace = JsPackage.GLOBAL )
  private static class Location
  {
    @JsProperty( name = "hash" )
    native String hash();

    @JsProperty( name = "pathname" )
    native String pathname();

    @JsProperty( name = "search" )
    native String search();
  }

  @JsType( isNative = true, name = "History", namespace = JsPackage.GLOBAL )
  private static class History
  {
    @JsMethod
    native void pushState( Object data, String unused, String url );
  }

  @JsType( isNative = true, name = "Document", namespace = JsPackage.GLOBAL )
  private static class Document
  {
    @JsProperty( name = "title" )
    native String title();
  }

  private final Stream<List<Todo>> filteredTodo$;
  private final Subject<FilterMode> filterMode$;

  ViewService( @Nonnull final TodoRepository todoRepository )
  {
    addEventListener( "hashchange", this::onHashChangeEvent, false );

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
    final Location location = location();
    final String place = location.hash().substring( 1 );
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
      history().pushState( "", document().title(), location.pathname() + location.search() );
      filterMode$.next( FilterMode.ALL );
    }
  }

  @JsMethod( name = "addEventListener", namespace = JsPackage.GLOBAL )
  private static native void addEventListener( String type, EventListener listener, boolean capture );

  @JsProperty( name = "location", namespace = JsPackage.GLOBAL )
  private static native Location location();

  @JsProperty( name = "history", namespace = JsPackage.GLOBAL )
  private static native History history();

  @JsProperty( name = "document", namespace = JsPackage.GLOBAL )
  private static native Document document();
}
