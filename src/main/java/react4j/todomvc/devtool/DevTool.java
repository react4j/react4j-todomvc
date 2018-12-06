package react4j.todomvc.devtool;

import arez.ArezContext;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import react4j.ReactNode;
import react4j.annotations.Prop;
import react4j.annotations.ReactComponent;
import react4j.arez.ReactArezComponent;
import react4j.todomvc.devtool.model.ComponentTypeModel;
import react4j.todomvc.devtool.model.ContextModel;
import static react4j.dom.DOM.*;

@ReactComponent
public abstract class DevTool
  extends ReactArezComponent
{
  private ContextModel _model;

  @Prop
  @Nonnull
  abstract ArezContext getTarget();

  @Override
  protected void postConstruct()
  {
    _model = ContextModel.create( getTarget(), "Default" );
  }

  @Nullable
  @Override
  protected ReactNode render()
  {
    return div( h1( "DevTool" ),
                table(
                  thead(
                    tr(
                      th( "Component Type" ),
                      th( "Count" )
                    )
                  ),
                  tbody(
                    _model
                      .getComponentTypeRegistry()
                      .values()
                      .stream()
                      .map( this::renderComponentType )
                  )
                )
    );
  }

  @Nonnull
  private ReactNode renderComponentType( @Nonnull final ComponentTypeModel t )
  {
    return tr( td( t.getName() ), td( t.componentCount() ) );
  }
}
