package react4j.todomvc;

import arez.Arez;
import elemental2.core.Global;
import elemental2.dom.DomGlobal;
import elemental2.dom.Event;
import elemental2.dom.EventListener;
import elemental2.dom.MessageEvent;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;
import javax.annotation.Nonnull;
import jsinterop.base.JsPropertyMap;
import static org.realityforge.braincheck.Guards.*;

/**
 * A SpyEventHandler that prints spy events to the browser console.
 * The events are grouped according to their nesting levels and are colored to make them easy
 * to digest. This class is designed to be easy to sub-class.
 */
public class PostMessageConsoleEventHandler
  implements EventListener
{
  /*
   * The SVG icons for REACTION_SCHEDULED_COLOR and COMPUTED_COLOR were adjusted variants from the mobx dev tools at https://github.com/andykog/mobx-devtools/blob/master/src/frontend/TabChanges/icons.jsx
   * They were then converted to base64 via http://base64online.org/encode/
   * and converted to excessive css you see below
   */
  private static final String COMPONENT_COLOR = "color: #410B13; font-weight: normal;";
  private static final String OBSERVABLE_COLOR = "color: #CF8A3B; font-weight: normal;";
  private static final String COMPUTED_COLOR =
    "color: #FFBA49; font-weight: normal; background-repeat: no-repeat; background-size: contain; padding-left: 20px; background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNSIgaGVpZ2h0PSIxNSIgdmlld0JveD0iMCAwIDE1IDE1Ij4KICA8ZyBmaWxsPSIjN0I1NkEzIj4KICAgIDxjaXJjbGUgY3g9IjMuNzUiIGN5PSIxMS44MyIgcj0iMiIvPgogICAgPGNpcmNsZSBjeD0iMy43NSIgY3k9IjMuMTciIHI9IjIiLz4KICAgIDxjaXJjbGUgY3g9IjExLjI1IiBjeT0iNy41IiByPSIyIi8+CiAgPC9nPgogIDxnIGZpbGw9Im5vbmUiIHN0cm9rZT0iIzdCNTZBMyIgc3Ryb2tlTWl0ZXJsaW1pdD0iMTAiPgogICAgPHBhdGggZD0iTTYuMjUgNy41bC0yLjUgNC4zMyIvPgogICAgPHBhdGggZD0iTTYuMjUgNy41bC0yLjUtNC4zMyIvPgogICAgPHBhdGggZD0iTTYuMjUgNy41aDUiLz4KICA8L2c+Cjwvc3ZnPgo=);";
  private static final String OBSERVER_COLOR = "color: #0FA13B; font-weight: normal;";
  private static final String REACTION_COLOR = "color: #10a210; font-weight: normal;";
  private static final String REACTION_SCHEDULED_COLOR =
    "color: #10a210; font-weight: normal; background-repeat: no-repeat; background-size: contain; padding-left: 20px; background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNSIgaGVpZ2h0PSIxNSIgdmlld0JveD0iMCAwIDE1IDE1Ij48ZyBmaWxsPSJub25lIiBzdHJva2U9IiMxMGEyMTAiIHN0cm9rZU1pdGVybGltaXQ9IjEwIj48cGF0aCBkPSJNMTIuNjk3IDEwLjVhNiA2IDAgMSAxIC4xMTUtNS43OTIiLz48cGF0aCBkPSJNNy41IDcuNVYzTTcuNSA3LjVMMTAgMTAiLz48L2c+PGcgZmlsbD0iIzAwMDAwMCI+PHBhdGggZD0iTTEwLjYxOCA0Ljc0M0wxMy41IDcuNWwuOTQ3LTMuODc0eiIvPjxjaXJjbGUgY3g9IjcuNSIgY3k9IjcuNSIgcj0iLjc1Ii8+PC9nPjwvc3ZnPgo=);";
  private static final String ACTION_COLOR = "color: #006AEB; font-weight: normal;";
  private static final String TRANSACTION_COLOR = "color: #A18008; font-weight: normal;";
  private static final String ERROR_COLOR = "color: #A10001; font-weight: normal;";
  /**
   * The processors that can be delegated to.
   */
  private final Map<String, BiConsumer<NestingDelta, ?>> _processors = new HashMap<>();
  @Nonnull
  private final String _origin;

  /**
   * Create the processor.
   */
  PostMessageConsoleEventHandler( @Nonnull final String origin )
  {
    _origin = Objects.requireNonNull( origin );
    on( "ComponentCreateStart", this::onComponentCreateStart );
    on( "ComponentCreateComplete", this::onComponentCreateCompleteEvent );
    on( "ComponentDisposeStart", this::onComponentDisposeStart );
    on( "ComponentDisposeComplete", this::onComponentDisposeComplete );

    on( "ObserverCreate", this::onObserverCreate );
    on( "ObserverDispose", this::onObserverDispose );
    on( "ObserverError", this::onObserverError );

    on( "ObservableValueCreate", this::onObservableValueCreate );
    on( "ObservableValueDispose", this::onObservableValueDispose );
    on( "ObservableValueChange", this::onObservableValueChange );

    on( "ComputedValueCreate", this::onComputedValueCreate );
    on( "ComputedValueActivated", this::onComputedValueActivated );
    on( "ComputeStart", this::onComputeStart );
    on( "ComputeComplete", this::onComputeComplete );
    on( "ComputedValueDeactivated", this::onComputedValueDeactivated );
    on( "ComputedValueDispose", this::onComputedValueDispose );

    on( "ObserveScheduled", this::onObserveScheduled );
    on( "ObserveStart", this::onObserveStart );
    on( "ObserveComplete", this::onObserveComplete );

    on( "TransactionStart", this::TransactionStart );
    on( "TransactionComplete", this::onTransactionComplete );

    on( "ActionStart", this::onActionStart );
    on( "ActionComplete", this::onActionComplete );
  }

  /**
   * Handle the ComponentCreateStartEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void onComponentCreateStart( @Nonnull final NestingDelta d, @Nonnull final JsPropertyMap<Object> e )
  {
    log( d, "%cComponent Create Start " + e.get( "name" ), COMPONENT_COLOR );
  }

  /**
   * Handle the ComponentCreateCompleteEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void onComponentCreateCompleteEvent( @Nonnull final NestingDelta d, @Nonnull final JsPropertyMap<Object> e )
  {
    log( d, "%cComponent Create Complete " + e.get( "name" ), COMPONENT_COLOR );
  }

  /**
   * Handle the ComponentDisposeStartEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void onComponentDisposeStart( @Nonnull final NestingDelta d, @Nonnull final JsPropertyMap<Object> e )
  {
    log( d, "%cComponent Dispose Start " + e.get( "name" ), COMPONENT_COLOR );
  }

  /**
   * Handle the ComponentDisposeCompleteEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void onComponentDisposeComplete( @Nonnull final NestingDelta d,
                                           @Nonnull final JsPropertyMap<Object> e )
  {
    log( d, "%cComponent Dispose Complete " + e.get( "name" ), COMPONENT_COLOR );
  }

  /**
   * Handle the ObserverCreateEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void onObserverCreate( @Nonnull final NestingDelta d, @Nonnull final JsPropertyMap<Object> e )
  {
    log( d, "%cObserver Create " + e.get( "name" ), OBSERVER_COLOR );
  }

  /**
   * Handle the ObserverDisposeEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void onObserverDispose( @Nonnull final NestingDelta d, @Nonnull final JsPropertyMap<Object> e )
  {
    log( d, "%cObserver Dispose " + e.get( "name" ), OBSERVER_COLOR );
  }

  /**
   * Handle the ObserverErrorEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void onObserverError( @Nonnull final NestingDelta d, @Nonnull final JsPropertyMap<Object> e )
  {
    log( d,
         "%cObserver Error " + e.get( "name" ) + " " + e.get( "errorType" ) + " " + e.get( "message" ),
         ERROR_COLOR );
  }

  /**
   * Handle the ObservableCreateEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void onObservableValueCreate( @Nonnull final NestingDelta d,
                                        @Nonnull final JsPropertyMap<Object> e )
  {
    log( d, "%cObservable Create " + e.get( "name" ), OBSERVABLE_COLOR );
  }

  /**
   * Handle the ObservableDisposeEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void onObservableValueDispose( @Nonnull final NestingDelta d, @Nonnull final JsPropertyMap<Object> e )
  {
    log( d, "%cObservable Dispose " + e.get( "name" ), OBSERVABLE_COLOR );
  }

  /**
   * Handle the ObservableChangeEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void onObservableValueChange( @Nonnull final NestingDelta d, @Nonnull final JsPropertyMap<Object> e )
  {
    assert NestingDelta.NONE == d;
    DomGlobal.console.log( "%cObservable Change " +
                           e.get( "name" ) +
                           ( Arez.arePropertyIntrospectorsEnabled() ? " Value: %o " : null ),
                           OBSERVABLE_COLOR,
                           ( Arez.arePropertyIntrospectorsEnabled() ? e.get( "value" ) : null ) );
  }

  /**
   * Handle the ComputedValueCreateEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void onComputedValueCreate( @Nonnull final NestingDelta d,
                                      @Nonnull final JsPropertyMap<Object> e )
  {
    log( d, "%cComputed Value Create " + e.get( "name" ), COMPUTED_COLOR );
  }

  /**
   * Handle the ComputedValueActivatedEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void onComputedValueActivated( @Nonnull final NestingDelta d,
                                         @Nonnull final JsPropertyMap<Object> e )
  {
    log( d, "%cComputed Value Activate " + e.get( "name" ), COMPUTED_COLOR );
  }

  /**
   * Handle the ComputeStartEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void onComputeStart( @Nonnull final NestingDelta d, @Nonnull final JsPropertyMap<Object> e )
  {
    log( d, "%cCompute Start " + e.get( "name" ), COMPUTED_COLOR );
  }

  /**
   * Handle the ComputeCompleteEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void onComputeComplete( @Nonnull final NestingDelta d, @Nonnull final JsPropertyMap<Object> e )
  {
    log( d, "%cCompute Complete " + e.get( "name" ) + " [" + e.get( "duration" ) + "]", COMPUTED_COLOR );
  }

  /**
   * Handle the ComputedValueDeactivatedEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void onComputedValueDeactivated( @Nonnull final NestingDelta d, @Nonnull final JsPropertyMap<Object> e )
  {
    log( d, "%cComputed Value Deactivate " + e.get( "name" ), COMPUTED_COLOR );
  }

  /**
   * Handle the ComputedValueDisposeEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void onComputedValueDispose( @Nonnull final NestingDelta d, @Nonnull final JsPropertyMap<Object> e )
  {
    log( d, "%cComputed Value Dispose " + e.get( "name" ), COMPUTED_COLOR );
  }

  /**
   * Handle the ObserveScheduledEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void onObserveScheduled( @Nonnull final NestingDelta d, @Nonnull final JsPropertyMap<Object> e )
  {
    log( d, "%cReaction Scheduled " + e.get( "name" ), REACTION_SCHEDULED_COLOR );
  }

  /**
   * Handle the ObserveStartEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void onObserveStart( @Nonnull final NestingDelta d, @Nonnull final JsPropertyMap<Object> e )
  {
    log( d, "%cReaction Start " + e.get( "name" ), REACTION_COLOR );
  }

  /**
   * Handle the ObserveCompleteEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void onObserveComplete( @Nonnull final NestingDelta d, @Nonnull final JsPropertyMap<Object> e )
  {
    log( d,
         "%cReaction Complete " + e.get( "name" ) + " [" + e.get( "duration" ) + "]",
         REACTION_COLOR );
  }

  /**
   * Handle the TransactionStartEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void TransactionStart( @Nonnull final NestingDelta d, @Nonnull final JsPropertyMap<Object> e )
  {
    log( d, "%cTransaction Start " + e.get( "name" ) +
            " Mutation=" + e.get( "mutation" ) +
            " Tracker=" + e.get( "tracker" ),
         TRANSACTION_COLOR );
  }

  /**
   * Handle the TransactionCompleteEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void onTransactionComplete( @Nonnull final NestingDelta d, @Nonnull final JsPropertyMap<Object> e )
  {
    log( d, "%cTransaction Complete " + e.get( "name" ) +
            " Mutation=" + e.get( "mutation" ) +
            " Tracker=" + e.get( "tracker" ) +
            " [" + e.get( "duration" ) + "]",
         TRANSACTION_COLOR );
  }

  /**
   * Handle the ActionStartEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void onActionStart( @Nonnull final NestingDelta d, @Nonnull final JsPropertyMap<Object> e )
  {
    final String message =
      ( e.getAny( "tracked" ).asBoolean() ? "Tracked " : "" ) + "Action Start " + e.get( "name" ) +
      ( "(" + ( e.has( "parameters" ) ? Global.JSON.stringify( e.get( "parameters" ) ) : "" ) + ")" );
    log( d, "%c" + message, ACTION_COLOR );
  }

  /**
   * Handle the ActionCompleteEvent.
   *
   * @param d the change in nesting level.
   * @param e the event.
   */
  private void onActionComplete( @Nonnull final NestingDelta d, @Nonnull final JsPropertyMap<Object> e )
  {
    final boolean returnsResult = e.getAny( "returnsResult" ).asBoolean();
    final Object errorMessage = e.get( "errorMessage" );
    final String message =
      ( e.getAny( "tracked" ).asBoolean() ? "Tracked " : "" ) + "Action Complete " + e.get( "name" ) +
      ( "(" + ( e.has( "parameters" ) ? Global.JSON.stringify( e.get( "parameters" ) ) : "" ) + ")" ) +
      ( returnsResult && null == errorMessage ? " = " + e.get( "result" ) : "" ) +
      ( null != errorMessage ? "threw " + errorMessage : "" ) +
      " Duration [" +
      e.get( "duration" ) +
      "]";
    log( d, "%c" + message, ACTION_COLOR );
  }

  /**
   * Log specified message with parameters
   *
   * @param delta   the nesting delta.
   * @param message the message.
   * @param styling the styling parameter. It is assumed that the message has a %c somewhere in it to identify the start of the styling.
   */
  private void log( @Nonnull final NestingDelta delta,
                    @Nonnull final String message,
                    @Nonnull final String styling )
  {
    if ( NestingDelta.INCREASE == delta )
    {
      DomGlobal.console.groupCollapsed( message, styling );
    }
    else if ( NestingDelta.DECREASE == delta )
    {
      DomGlobal.console.log( message, styling );
      DomGlobal.console.groupEnd();
    }
    else
    {
      DomGlobal.console.log( message, styling );
    }
  }

  /**
   * Method invoked by subclasses to register
   *
   * @param <T>       the event type.
   * @param type      the type of the event to register.
   * @param processor the processor to handle event with.
   */
  protected final <T> void on( @Nonnull final String type,
                               @Nonnull final BiConsumer<NestingDelta, T> processor )
  {
    if ( Arez.shouldCheckApiInvariants() )
    {
      apiInvariant( () -> !_processors.containsKey( type ),
                    () -> "Arez-0157: Attempting to call AbstractSpyEventProcessor.on() to register a processor " +
                          "for type " + type + " but an existing processor already exists for type" );
    }
    _processors.put( type, processor );
  }

  /**
   * Handle the specified event by delegating to the registered processor.
   *
   * @param event the event that occurred.
   */
  @Override
  @SuppressWarnings( { "ConstantConditions", "unchecked" } )
  public void handleEvent( final Event event )
  {
    assert null != event;
    final MessageEvent<JsPropertyMap<Object>> message = (MessageEvent<JsPropertyMap<Object>>) event;

    if ( !_origin.equals( message.origin ) )
    {
      return;
    }

    final JsPropertyMap<Object> data = message.data;

    final String type = (String) data.get( "type" );
    final BiConsumer<NestingDelta, Object> processor =
      (BiConsumer<NestingDelta, Object>) _processors.get( type );
    if ( null != processor )
    {
      final NestingDelta delta = getNestingDelta( type );
      if ( NestingDelta.DECREASE == delta )
      {
        decreaseNestingLevel();
      }
      processor.accept( delta, data );
      if ( NestingDelta.INCREASE == delta )
      {
        increaseNestingLevel();
      }
    }
    else
    {
      handleUnhandledEvent( data );
    }
  }

  /**
   * Hook method called when the nesting level increases.
   * Override as appropriate in subclasses.
   */
  private void increaseNestingLevel()
  {
  }

  /**
   * Hook method called when the nesting level decreases.
   * Override as appropriate in subclasses.
   */
  private void decreaseNestingLevel()
  {
  }

  /**
   * Handle the specified event that had no processors defined for it.
   *
   * @param event the unhandled event.
   */
  private void handleUnhandledEvent( @Nonnull final Object event )
  {
    DomGlobal.console.log( event );
  }

  /**
   * The change in nesting.
   */
  public enum NestingDelta
  {
    INCREASE,
    DECREASE,
    NONE,
    UNKNOWN
  }

  /**
   * Return the changing in nesting this event will cause.
   * Spy events often come in pairs where one event starts a section and another event completes it.
   * This is often to useful to represent as nesting or indentation levels during debug process.
   * This method will return the change in nesting after this event is processed. If the specified
   * nesting is not one of the builtin events then a value of {@link NestingDelta#UNKNOWN} will be
   * returned.
   *
   * @param type the event type.
   * @return the nesting delta.
   */
  @Nonnull
  private NestingDelta getNestingDelta( @Nonnull final String type )
  {
    switch ( type )
    {
      case "ComponentCreateStart":
      case "ComponentDisposeStart":
      case "ObserveStart":
      case "TransactionStart":
      case "ComputeStart":
      case "ActionStart":
        return NestingDelta.INCREASE;
      case "ComponentCreateComplete":
      case "ComponentDisposeComplete":
      case "ObserveComplete":
      case "TransactionComplete":
      case "ComputeComplete":
      case "ActionComplete":
        return NestingDelta.DECREASE;
      case "ObserverCreate":
      case "ObserverDispose":
      case "ObserverError":
      case "ObservableValueCreate":
      case "ObservableValueDispose":
      case "ObservableValueChange":
      case "ComputedValueActivated":
      case "ComputedValueDeactivated":
      case "ComputedValueCreate":
      case "ComputedValueDispose":
      case "ObserveScheduled":
        return NestingDelta.NONE;
      default:
        //This is returned when the event type is not a builtin event
        return NestingDelta.UNKNOWN;
    }
  }
}
