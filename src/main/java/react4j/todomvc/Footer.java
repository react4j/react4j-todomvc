package react4j.todomvc;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import javax.inject.Inject;
import org.realityforge.arez.annotations.Computed;
import react4j.annotations.EventHandler;
import react4j.annotations.ReactComponent;
import react4j.arez.ReactArezComponent;
import react4j.core.BaseContext;
import react4j.core.BaseProps;
import react4j.core.BaseState;
import react4j.core.ReactNode;
import react4j.dom.events.MouseEventHandler;
import react4j.dom.proptypes.html.AnchorProps;
import react4j.dom.proptypes.html.BtnProps;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.todomvc.model.FilterMode;
import react4j.todomvc.model.TodoRepository;
import react4j.todomvc.model.TodoService;
import react4j.todomvc.model.ViewService;
import static react4j.dom.DOM.*;
import static react4j.todomvc.Footer_.*;

@ReactComponent
class Footer
  extends ReactArezComponent<BaseProps, BaseState, BaseContext>
{
  @Inject
  TodoRepository _todoRepository;
  @Inject
  TodoService _todoService;
  @Inject
  ViewService _viewService;

  @EventHandler( MouseEventHandler.class )
  void handleClearCompleted()
  {
    _todoService.clearCompleted();
  }

  @Nonnull
  static ReactNode create()
  {
    return _create();
  }

  @Nullable
  @Override
  protected ReactNode render()
  {
    final FilterMode filterMode = _viewService.getFilterMode();
    return
      footer( new HtmlProps().className( "footer" ),
              FooterTodoCount.create(),
              ul( new HtmlProps().className( "filters" ),
                  li( a( new AnchorProps()
                           .className( FilterMode.ALL == filterMode ? "selected" : "" )
                           .href( "#" ), "All" )
                  ),
                  li( a( new AnchorProps()
                           .className( FilterMode.ACTIVE == filterMode ? "selected" : "" )
                           .href( "#active" ), "Active" )
                  ),
                  li( a( new AnchorProps()
                           .className( FilterMode.COMPLETED == filterMode ? "selected" : "" )
                           .href( "#completed" ), "Completed" )
                  )
              ),
              hasCompletedItems() ?
              button( new BtnProps().className( "clear-completed" ).onClick( _handleClearCompleted( this ) ),
                      "Clear Completed" ) :
              null
      );
  }

  @Computed
  boolean hasCompletedItems()
  {
    return _todoRepository.completedCount() > 0;
  }
}
