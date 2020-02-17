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
import elemental2.dom.DomGlobal;
import elemental2.dom.Event;
import elemental2.dom.EventListener;
import java.util.Objects;
import javax.annotation.Nonnull;

/**
 * This is a simple abstraction over browser location as a hash.
 * It should be noted that this is a stripped down version extracted from the <code>arez-browserlocation</code> library.
 *
 * @link https://github.com/arez/arez-browserlocation
 */
@ArezComponent( service = Feature.ENABLE )
abstract class BrowserLocation
{
  private final EventListener _listener = this::onHashChangeEvent;
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
  final void onBrowserLocationActivate()
  {
    DomGlobal.window.addEventListener( "hashchange", _listener, false );
  }

  @OnDeactivate
  final void onBrowserLocationDeactivate()
  {
    DomGlobal.window.removeEventListener( "hashchange", _listener, false );
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
    final String hash = DomGlobal.window.location.hash;
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
      final String url = DomGlobal.window.location.pathname + DomGlobal.window.location.search;
      DomGlobal.window.history.pushState( "", DomGlobal.document.title, url );
    }
    else
    {
      DomGlobal.window.location.hash = hash;
    }
  }
}
