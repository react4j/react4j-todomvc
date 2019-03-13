package react4j.todomvc;

import arez.annotations.PostConstruct;
import arez.annotations.PreDispose;
import javax.annotation.Nullable;
import react4j.ReactNode;
import react4j.annotations.ReactComponent;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.todomvc.model.AppData;
import spritz.Subscription;
import static react4j.dom.DOM.*;

@ReactComponent
abstract class FooterTodoCount
  extends SpritzComponent
{
  private int _totalCount;
  private Subscription _totalCountSubscription;

  @PostConstruct
  void postConstruct()
  {
    _totalCountSubscription = AppData.service.totalCount().forEach( totalCount -> {
      _totalCount = totalCount;
      maybeScheduleRender();
    } );
  }

  @PreDispose
  @Override
  void preDispose()
  {
    super.preDispose();
    _totalCountSubscription.cancel();
  }

  @Nullable
  @Override
  protected ReactNode render()
  {
    final String activeTodoWord = "item" + ( _totalCount == 1 ? "" : "s" );
    return
      span( new HtmlProps().className( "todo-count" ),
            strong( _totalCount ),
            text( " " + activeTodoWord + " left" )
      );
  }
}
