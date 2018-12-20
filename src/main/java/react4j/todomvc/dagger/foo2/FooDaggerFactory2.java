package react4j.todomvc.dagger.foo2;

import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import java.util.function.Consumer;
import javax.annotation.Nonnull;
import javax.inject.Provider;
import react4j.todomvc.model.TodoRepository;

public interface FooDaggerFactory2
{
  Provider<Foo2> createFoo2Provider();

  void inject( Enhanced_Foo2 foo );

  default void bindFoo2()
  {
    InjectSupport.c_subComponent = this;
  }

  final class InjectSupport
  {
    private static FooDaggerFactory2 c_subComponent;
    private static final Consumer<Enhanced_Foo2> c_enhancer = e -> c_subComponent.inject( e );
  }

  @Module
  interface DaggerModule
  {
    @Binds
    Foo2 bindComponent( Enhanced_Foo2 component );

    @Provides
    static Consumer<Enhanced_Foo2> provideEnhancer()
    {
      return InjectSupport.c_enhancer;
    }

    @Provides
    static Enhanced_Foo2 provideInstance( @Nonnull final Provider<Consumer<Enhanced_Foo2>> p1,
                                          @Nonnull final TodoRepository repository )
    {
      return new Enhanced_Foo2( p1.get(), repository );
    }
  }
}
