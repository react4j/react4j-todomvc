package react4j.todomvc;

import arez.annotations.PostConstruct;
import javax.annotation.Nonnull;
import react4j.ReactNode;
import react4j.annotations.Render;
import react4j.annotations.View;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.todomvc.model.AppData;
import static react4j.dom.DOM.*;

@View
abstract class FooterTodoCount
  extends SpritzComponent
{
  private int _totalCount;

  @PostConstruct
  void postConstruct()
  {
    register( AppData.service.totalCount().forEach( totalCount -> {
      _totalCount = totalCount;
      maybeScheduleRender();
    } ) );
  }

  @Render
  @Nonnull
  ReactNode render()
  {
    return span( new HtmlProps().className( "todo-count" ),
                 strong( _totalCount ),
                 text( " item" + ( _totalCount == 1 ? "" : "s" ) + " left" ) );
  }
}
