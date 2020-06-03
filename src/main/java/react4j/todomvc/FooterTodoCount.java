package react4j.todomvc;

import javax.annotation.Nonnull;
import react4j.ReactNode;
import react4j.annotations.Render;
import react4j.annotations.View;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.todomvc.model.AppData;
import static react4j.dom.DOM.*;

@View
abstract class FooterTodoCount
{
  @Nonnull
  @Render
  ReactNode render()
  {
    final int count = AppData.service.totalCount();
    return span( new HtmlProps().className( "todo-count" ),
                 strong( count ),
                 text( " item" + ( count == 1 ? "" : "s" ) + " left" ) );
  }
}
