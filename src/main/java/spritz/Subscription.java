package spritz;

import java.util.Objects;

public final class Subscription
{
  private final Runnable _cancelAction;
  private boolean _cancelled;

  Subscription( final Runnable cancelAction )
  {
    _cancelAction = Objects.requireNonNull( cancelAction );
  }

  public void cancel()
  {
    if ( !_cancelled )
    {
      _cancelled = true;
      _cancelAction.run();
    }
  }
}
