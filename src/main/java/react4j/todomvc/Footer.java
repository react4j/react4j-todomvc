package react4j.todomvc;

import javax.annotation.Nullable;
import react4j.Component;
import react4j.ReactNode;
import react4j.annotations.PostMount;
import react4j.annotations.ReactComponent;
import react4j.dom.proptypes.html.AnchorProps;
import react4j.dom.proptypes.html.BtnProps;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.todomvc.model.AppData;
import react4j.todomvc.model.FilterMode;
import static react4j.dom.DOM.*;

@ReactComponent
abstract class Footer
  extends Component
{
  private void handleClearCompleted()
  {
    AppData.service.clearCompleted();
  }

  @PostMount
  final void postMount()
  {
    AppData.viewService.subscribe( this::scheduleRender );
  }

  @Nullable
  @Override
  protected ReactNode render()
  {
    final FilterMode filterMode = AppData.viewService.getFilterMode();
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
              AppData.service.completedCount() > 0 ?
              button( new BtnProps().className( "clear-completed" ).onClick( e -> handleClearCompleted() ),
                      "Clear Completed" ) :
              null
      );
  }
}
