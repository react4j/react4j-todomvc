package react4j.todomvc.model;

import arez.SafeProcedure;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import jsinterop.annotations.JsFunction;
import jsinterop.annotations.JsMethod;
import jsinterop.annotations.JsPackage;
import jsinterop.annotations.JsProperty;
import jsinterop.annotations.JsType;

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

  @Nonnull
  private final List<SafeProcedure> _subscribers = new ArrayList<>();
  @Nonnull
  private final TodoRepository _todoRepository;
  @Nullable
  private Todo _todoBeingEdited;

  ViewService( @Nonnull final TodoRepository todoRepository )
  {
    _todoRepository = Objects.requireNonNull( todoRepository );
    addEventListener( "hashchange", this::onHashChangeEvent, false );
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

  @Nonnull
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
      /*
       * This code is needed to remove the stray #.
       * See https://stackoverflow.com/questions/1397329/how-to-remove-the-hash-from-window-location-url-with-javascript-without-page-r/5298684#5298684
       */
      final Location location = location();
      history().pushState( "", document().title(), location.pathname() + location.search() );
    }
  }

  @Nonnull
  private String getHash()
  {
    return location().hash().substring( 1 );
  }

  public void subscribe( @Nonnull final SafeProcedure subscriber )
  {
    _subscribers.add( subscriber );
  }

  private void notifySubscribers()
  {
    _subscribers.forEach( SafeProcedure::call );
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
