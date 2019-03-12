package react4j.todomvc;

import arez.Disposable;
import arez.annotations.PreDispose;
import react4j.Component;
import react4j.annotations.PostMount;

abstract class SpritzComponent
  extends Component
{
  private boolean _mounted;

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
  }
}
