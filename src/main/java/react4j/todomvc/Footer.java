package react4j.todomvc;

import javax.annotation.Nonnull;
import react4j.ReactNode;
import react4j.annotations.PostMount;
import react4j.annotations.Render;
import react4j.annotations.ScheduleRender;
import react4j.annotations.View;
import react4j.dom.proptypes.html.AnchorProps;
import react4j.dom.proptypes.html.BtnProps;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.todomvc.model.AppData;
import react4j.todomvc.model.FilterMode;
import static react4j.dom.DOM.*;

@View
abstract class Footer
{
  private void handleClearCompleted()
  {
    AppData.service.clearCompleted();
  }

  @ScheduleRender
  abstract void scheduleRender();

  @PostMount
  void postMount()
  {
    AppData.viewService.subscribe( this::scheduleRender );
  }

  @Nonnull
  @Render
  ReactNode render()
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
