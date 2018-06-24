package react4j.todomvc;

import javax.annotation.Nullable;
import javax.inject.Inject;
import react4j.annotations.ReactComponent;
import react4j.arez.ReactArezComponent;
import react4j.ReactNode;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.todomvc.model.TodoRepository;
import static react4j.dom.DOM.*;

@ReactComponent
abstract class FooterTodoCount
  extends ReactArezComponent
{
  @Inject
  TodoRepository _todoRepository;

  @Nullable
  @Override
  protected ReactNode render()
  {
    final int count = _todoRepository.totalCount();
    final String activeTodoWord = "item" + ( count == 1 ? "" : "s" );
    return
      span( new HtmlProps().className( "todo-count" ),
            strong( Integer.toString( count ) ),
            text( " " + activeTodoWord + " left" )
      );
  }
}
