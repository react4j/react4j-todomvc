package react4j.todomvc;

import java.util.Objects;
import javax.annotation.Nonnull;
import react4j.ReactNode;
import react4j.annotations.Render;
import react4j.annotations.View;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.todomvc.model.TodoRepository;
import static react4j.dom.DOM.*;

@View( type = View.Type.TRACKING )
abstract class FooterTodoCount
{
  @Nonnull
  private final TodoRepository _todoRepository;

  FooterTodoCount( @Nonnull final TodoRepository todoRepository )
  {
    _todoRepository = Objects.requireNonNull( todoRepository );
  }

  @Render
  @Nonnull
  ReactNode render()
  {
    final int count = _todoRepository.totalCount();
    return span( new HtmlProps().className( "todo-count" ),
                 strong( count ),
                 text( " item" + ( count == 1 ? "" : "s" ) + " left" ) );
  }
}
