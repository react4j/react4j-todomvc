package react4j.todomvc;

import javax.annotation.Nullable;
import react4j.annotations.ReactComponent;
import react4j.core.Component;
import react4j.core.ReactNode;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.todomvc.model.AppData;
import static react4j.dom.DOM.*;

@ReactComponent
abstract class FooterTodoCount
  extends Component
{
  @Nullable
  @Override
  protected ReactNode render()
  {
    final int count = AppData.service.totalCount();
    final String activeTodoWord = "item" + ( count == 1 ? "" : "s" );
    return
      span( new HtmlProps().className( "todo-count" ),
            strong( Integer.toString( count ) ),
            text( " " + activeTodoWord + " left" )
      );
  }
}
