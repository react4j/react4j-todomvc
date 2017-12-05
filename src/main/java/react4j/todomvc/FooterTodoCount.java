package react4j.todomvc;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import javax.inject.Inject;
import react4j.annotations.ReactComponent;
import react4j.arez.ReactArezComponent;
import react4j.core.BaseContext;
import react4j.core.BaseProps;
import react4j.core.BaseState;
import react4j.core.ReactNode;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.todomvc.model.TodoRepository;
import static react4j.dom.DOM.*;
import static react4j.todomvc.FooterTodoCount_.*;

@ReactComponent
class FooterTodoCount
  extends ReactArezComponent<BaseProps, BaseState, BaseContext>
{
  @Inject
  TodoRepository _todoRepository;

  @Nonnull
  static ReactNode create()
  {
    return _create();
  }

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
