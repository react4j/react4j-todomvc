package react4j.todomvc.dagger.foo;

import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.Subcomponent;
import java.util.function.Consumer;
import javax.inject.Provider;

public interface FooDaggerFactory
{
  DaggerSubcomponent getFooDaggerSubcomponent();

  default void bindFoo()
  {
    InjectSupport.c_enhancer = instance -> getFooDaggerSubcomponent().inject( instance );
  }

  final class InjectSupport
  {
    static Enhanced_Foo.Enhancer c_enhancer;
  }

  @Module
  interface DaggerModule
  {
    @Binds
    Foo bindComponent( Enhanced_Foo component );

    @Provides
    static Enhanced_Foo.Enhancer provideEnhancer()
    {
      return InjectSupport.c_enhancer;
    }
  }

  @Subcomponent( modules = DaggerModule.class )
  interface DaggerSubcomponent
  {
    void inject( Enhanced_Foo foo );

    Provider<Foo> createProvider();
  }
}
