package react4j.todomvc;

import arez.annotations.Memoize;
import java.util.Objects;
import javax.annotation.Nonnull;
import react4j.ReactNode;
import react4j.annotations.ReactComponent;
import react4j.annotations.Render;
import react4j.dom.proptypes.html.AnchorProps;
import react4j.dom.proptypes.html.BtnProps;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.todomvc.model.FilterMode;
import react4j.todomvc.model.TodoRepository;
import react4j.todomvc.model.TodoService;
import react4j.todomvc.model.ViewService;
import static react4j.dom.DOM.*;

@ReactComponent( type = ReactComponent.Type.TRACKING )
abstract class Footer
{
  @Nonnull
  private final TodoRepository _todoRepository;
  @Nonnull
  private final TodoService _todoService;
  @Nonnull
  private final ViewService _viewService;

  Footer( @Nonnull final TodoRepository todoRepository,
          @Nonnull final TodoService todoService,
          @Nonnull final ViewService viewService )
  {
    _todoRepository = Objects.requireNonNull( todoRepository );
    _todoService = Objects.requireNonNull( todoService );
    _viewService = Objects.requireNonNull( viewService );
  }

  @Render
  ReactNode render()
  {
    final FilterMode filterMode = _viewService.getFilterMode();
    return
      footer( new HtmlProps().className( "footer" ),
              FooterTodoCountBuilder.build(),
              ul( new HtmlProps().className( "filters" ),
                  li( a( new AnchorProps()
                           .className( FilterMode.ALL == filterMode ? "selected" : null )
                           .href( "#" ), "All" )
                  ),
                  li( a( new AnchorProps()
                           .className( FilterMode.ACTIVE == filterMode ? "selected" : null )
                           .href( "#active" ), "Active" )
                  ),
                  li( a( new AnchorProps()
                           .className( FilterMode.COMPLETED == filterMode ? "selected" : null )
                           .href( "#completed" ), "Completed" )
                  )
              ),
              hasCompletedItems() ?
              button( new BtnProps().className( "clear-completed" ).onClick( e -> _todoService.clearCompleted() ),
                      "Clear Completed" ) :
              null
      );
  }

  @Memoize
  boolean hasCompletedItems()
  {
    return _todoRepository.completedCount() > 0;
  }
}
