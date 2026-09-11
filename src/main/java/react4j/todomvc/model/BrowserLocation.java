package react4j.todomvc.model;

import arez.ComputableValue;
import arez.annotations.Action;
import arez.annotations.ArezComponent;
import arez.annotations.ComputableValueRef;
import arez.annotations.DepType;
import arez.annotations.Feature;
import arez.annotations.Memoize;
import arez.annotations.Observable;
import arez.annotations.OnActivate;
import arez.annotations.OnDeactivate;
import java.util.Objects;
import javax.annotation.Nonnull;
import jsinterop.annotations.JsFunction;
import jsinterop.annotations.JsMethod;
import jsinterop.annotations.JsPackage;
import jsinterop.annotations.JsProperty;
import jsinterop.annotations.JsType;

/**
 * This is a simple abstraction over browser location as a hash.
 * It should be noted that this is a stripped down version extracted from the <code>arez-dom</code> library.
 *
 * @link https://github.com/arez/arez-dom
 */
@ArezComponent( requireId = Feature.DISABLE, disposeNotifier = Feature.DISABLE )
abstract class BrowserLocation
{
  @JsFunction
  private interface HashChangeEventListener
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

    @JsProperty
    native void setHash( String hash );

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
  private final HashChangeEventListener _listener = this::onHashChangeEvent;
  /**
   * The location according to the application.
   */
  @Nonnull
  private String _location;
  /**
   * The location that the application is attempting to update the browser to.
   */
  @Nonnull
  private String _targetLocation;

  BrowserLocation()
  {
    _targetLocation = _location = getHash();
  }

  /**
   * Change the target location to the specified parameter.
   * This will ultimately result in a side-effect that updates the browsers location.
   * This location parameter should not include "#" as the first character.
   *
   * @param targetLocation the location to change to.
   */
  @Action( verifyRequired = false )
  void changeLocation( @Nonnull final String targetLocation )
  {
    _targetLocation = targetLocation;
    if ( targetLocation.equals( getBrowserLocation() ) )
    {
      setLocation( targetLocation );
    }
    setHash( targetLocation );
    /*
     * setHash does not trigger a "hashchange" event so explicitly call the hook here
     */
    updateBrowserLocation();
  }

  /**
   * Revert the browsers location to the application location.
   */
  @Action
  void resetBrowserLocation()
  {
    changeLocation( getLocation() );
  }

  /**
   * Return the location as the application sees it.
   * This return value does not include a "#" as the first character.
   *
   * @return the location.
   */
  @Observable
  @Nonnull
  String getLocation()
  {
    return _location;
  }

  @Observable
  void setLocation( @Nonnull final String location )
  {
    _location = Objects.requireNonNull( location );
  }

  @Memoize( depType = DepType.AREZ_OR_EXTERNAL )
  @Nonnull
  String getBrowserLocation()
  {
    return getHash();
  }

  @OnActivate
  void onBrowserLocationActivate()
  {
    addEventListener( "hashchange", _listener, false );
  }

  @OnDeactivate
  void onBrowserLocationDeactivate()
  {
    removeEventListener( "hashchange", _listener, false );
  }

  @ComputableValueRef
  abstract ComputableValue<?> getBrowserLocationComputableValue();

  @Action
  void updateBrowserLocation()
  {
    getBrowserLocationComputableValue().reportPossiblyChanged();
    final String location = getBrowserLocation();
    if ( _targetLocation.equals( location ) )
    {
      setLocation( location );
    }
  }

  private void onHashChangeEvent( @Nonnull final Event e )
  {
    e.preventDefault();
    updateBrowserLocation();
  }

  @Nonnull
  private String getHash()
  {
    return location().hash().substring( 1 );
  }

  private void setHash( @Nonnull final String hash )
  {
    final Location location = location();
    if ( 0 == hash.length() )
    {
      /*
       * This code is needed to remove the stray #.
       * See https://stackoverflow.com/questions/1397329/how-to-remove-the-hash-from-window-location-url-with-javascript-without-page-r/5298684#5298684
       */
      history().pushState( "", document().title(), location.pathname() + location.search() );
    }
    else
    {
      location.setHash( hash );
    }
  }

  @JsMethod( name = "addEventListener", namespace = JsPackage.GLOBAL )
  private static native void addEventListener( String type, HashChangeEventListener listener, boolean capture );

  @JsMethod( name = "removeEventListener", namespace = JsPackage.GLOBAL )
  private static native void removeEventListener( String type, HashChangeEventListener listener, boolean capture );

  @JsProperty( name = "location", namespace = JsPackage.GLOBAL )
  private static native Location location();

  @JsProperty( name = "history", namespace = JsPackage.GLOBAL )
  private static native History history();

  @JsProperty( name = "document", namespace = JsPackage.GLOBAL )
  private static native Document document();
}
