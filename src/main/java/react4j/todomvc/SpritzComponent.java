package react4j.todomvc;

import arez.Disposable;
import arez.annotations.PreDispose;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nonnull;
import react4j.annotations.PostMount;
import react4j.annotations.ScheduleRender;
import spritz.Subscription;

abstract class SpritzComponent
{
  @Nonnull
  private final List<Subscription> _subscriptions = new ArrayList<>();
  private boolean _mounted;

  @ScheduleRender
  abstract void scheduleRender();

  void maybeScheduleRender()
  {
    if ( _mounted && Disposable.isNotDisposed( this ) )
    {
      scheduleRender();
    }
  }

  @PostMount
  void postMount()
  {
    _mounted = true;
  }

  @PreDispose
  void preDispose()
  {
    _mounted = false;
    _subscriptions.forEach( Subscription::cancel );
  }

  protected final void register( @Nonnull final Subscription subscription )
  {
    _subscriptions.add( subscription );
  }
}
