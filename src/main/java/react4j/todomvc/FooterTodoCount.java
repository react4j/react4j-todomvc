package react4j.todomvc;

import java.util.Objects;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import react4j.Component;
import react4j.ReactNode;
import react4j.annotations.ReactComponent;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.todomvc.model.TodoRepository;
import static react4j.dom.DOM.*;

@ReactComponent( type = ReactComponent.Type.TRACKING )
abstract class FooterTodoCount
  extends Component
{
  @Nonnull
  private final TodoRepository _todoRepository;

  FooterTodoCount( @Nonnull final TodoRepository todoRepository )
  {
    _todoRepository = Objects.requireNonNull( todoRepository );
  }

  @Nullable
  @Override
  protected ReactNode render()
  {
    final int count = _todoRepository.totalCount();
    final String activeTodoWord = "item" + ( count == 1 ? "" : "s" );
    return
      span( new HtmlProps().className( "todo-count" ),
            strong( count ),
            text( " " + activeTodoWord + " left" )
      );
  }
}
