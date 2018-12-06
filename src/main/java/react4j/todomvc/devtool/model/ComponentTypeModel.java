package react4j.todomvc.devtool.model;

import arez.annotations.ArezComponent;
import arez.annotations.Feature;
import arez.annotations.Observable;
import java.util.Objects;
import javax.annotation.Nonnull;

@ArezComponent( observable = Feature.ENABLE )
public abstract class ComponentTypeModel
{
  @Nonnull
  private final String _name;

  @Nonnull
  public static ComponentTypeModel create( @Nonnull final String name )
  {
    return new Arez_ComponentTypeModel( name );
  }

  ComponentTypeModel( @Nonnull final String name )
  {
    _name = Objects.requireNonNull( name );
  }

  @Nonnull
  public String getName()
  {
    return _name;
  }

  @Observable
  public abstract int componentCount();

  abstract void setComponentCount( int componentCount );
}
