package react4j.todomvc;

import arez.Arez;
import arez.ArezContext;
import arez.spy.ComponentCreateCompleteEvent;
import arez.spy.ComponentDisposeCompleteEvent;
import arez.spy.Spy;
import arez.spy.SpyEventHandler;
import java.util.Collection;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import react4j.ReactNode;
import react4j.annotations.PostMount;
import react4j.annotations.Prop;
import react4j.annotations.ReactComponent;
import react4j.arez.ReactArezComponent;
import static react4j.dom.DOM.*;

@ReactComponent
public abstract class DevTool
  extends ReactArezComponent
{
  private final SpyEventHandler _handler = this::handleSpyEvent;

  @Prop
  @Nonnull
  abstract ArezContext getTarget();

  @PostMount
  final void postMount()
  {
    // TODO: should handle changes to prop
    getSpy().addSpyEventHandler( _handler );
  }

  @Nonnull
  private Spy getSpy()
  {
    return getTarget().getSpy();
  }

  private void handleSpyEvent( @Nonnull final Object o )
  {
    if ( o instanceof ComponentCreateCompleteEvent ||
         o instanceof ComponentDisposeCompleteEvent )
    {
      scheduleRender( true );
    }
  }

  @Nullable
  @Override
  protected ReactNode render()
  {
    getContext().observable().reportObserved();
    Arez.context().observable().reportObserved();
    final Spy spy = getSpy();
    final Collection<String> componentTypes = spy.findAllComponentTypes();
    return div( h1( "DevTool" ),
                table(
                  thead(
                    tr(
                      th( "Component Type" ),
                      th( "Count" )
                    )
                  ),
                  tbody(
                    componentTypes.stream().map( t -> tr( td( t ),
                                                          td( spy.findAllComponentsByType( t ).size() ) ) )
                  )
                )
    );
  }
}
