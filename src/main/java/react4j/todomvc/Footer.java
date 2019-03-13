package react4j.todomvc;

import arez.annotations.PostConstruct;
import arez.annotations.PreDispose;
import javax.annotation.Nullable;
import react4j.ReactNode;
import react4j.annotations.ReactComponent;
import react4j.dom.proptypes.html.AnchorProps;
import react4j.dom.proptypes.html.BtnProps;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.todomvc.model.AppData;
import react4j.todomvc.model.FilterMode;
import spritz.Subscription;
import static react4j.dom.DOM.*;

@ReactComponent
abstract class Footer
  extends SpritzComponent
{
  private int _completedCount;
  private FilterMode _filterMode;
  private Subscription _filterModeSubscription;
  private Subscription _completedCountSubscription;

  @PostConstruct
  void postConstruct()
  {
    _completedCountSubscription = AppData.service.completedCount().forEach( completedCount -> {
      _completedCount = completedCount;
      maybeScheduleRender();
    } );
    _filterModeSubscription = AppData.viewService.getFilterMode().forEach( filterMode -> {
      _filterMode = filterMode;
      maybeScheduleRender();
    } );
  }

  @PreDispose
  @Override
  void preDispose()
  {
    super.preDispose();
    _filterModeSubscription.cancel();
    _completedCountSubscription.cancel();
  }

  private void handleClearCompleted()
  {
    AppData.service.clearCompleted();
  }

  @Nullable
  @Override
  protected ReactNode render()
  {
    return
      footer( new HtmlProps().className( "footer" ),
              FooterTodoCountBuilder.build(),
              ul( new HtmlProps().className( "filters" ),
                  li( a( new AnchorProps()
                           .className( FilterMode.ALL == _filterMode ? "selected" : null )
                           .href( "#" ), "All" )
                  ),
                  li( a( new AnchorProps()
                           .className( FilterMode.ACTIVE == _filterMode ? "selected" : null )
                           .href( "#active" ), "Active" )
                  ),
                  li( a( new AnchorProps()
                           .className( FilterMode.COMPLETED == _filterMode ? "selected" : null )
                           .href( "#completed" ), "Completed" )
                  )
              ),
              _completedCount > 0 ?
              button( new BtnProps().className( "clear-completed" ).onClick( e -> handleClearCompleted() ),
                      "Clear Completed" ) :
              null
      );
  }
}
