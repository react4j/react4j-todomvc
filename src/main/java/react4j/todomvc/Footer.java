package react4j.todomvc;

import arez.annotations.Memoize;
import javax.annotation.Nullable;
import javax.inject.Inject;
import react4j.Component;
import react4j.ReactNode;
import react4j.annotations.ReactComponent;
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
  extends Component
{
  @Inject
  TodoRepository _todoRepository;
  @Inject
  TodoService _todoService;
  @Inject
  ViewService _viewService;

  @Nullable
  @Override
  protected ReactNode render()
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
