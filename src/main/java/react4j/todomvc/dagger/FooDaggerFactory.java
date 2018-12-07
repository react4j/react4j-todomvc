package react4j.todomvc.dagger;

import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.Subcomponent;
import java.util.function.Consumer;
import javax.annotation.Nonnull;
import javax.inject.Provider;
import react4j.todomvc.model.TodoRepository;

public interface FooDaggerFactory
{
  DaggerSubcomponent getFooDaggerSubcomponent();

  default void bindFoo()
  {
    InjectSupport.c_subComponent = getFooDaggerSubcomponent();
  }

  @Module
  interface DaggerModule
  {
    @Binds
    Foo bindComponent( Enhanced_Foo component );
  }

  class InjectSupport
  {
    static DaggerSubcomponent c_subComponent;
    static final Consumer<Enhanced_Foo> c_enhancer = e -> c_subComponent.inject( e );
  }

  @Module
  class DaggerModule2
  {
    @Provides
    static Consumer<Enhanced_Foo> provideEnhancer()
    {
      return InjectSupport.c_enhancer;
    }

    @Provides
    static Enhanced_Foo provideInstance( @Nonnull final Provider<Consumer<Enhanced_Foo>> p1, @Nonnull final TodoRepository repository )
    {
      return new Enhanced_Foo( p1.get(), repository );
    }
  }

  @Subcomponent(
    modules = { DaggerModule.class, DaggerModule2.class }
  )
  interface DaggerSubcomponent
  {
    void inject( Enhanced_Foo foo );

    Provider<Foo> createProvider();
  }
}
