package react4j.todomvc.dagger.foo2;

import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import javax.inject.Provider;

public interface FooDaggerFactory2
{
  // TODO: This is only required if PROVIDE = true
  Provider<Foo2> createFoo2Provider();

  // TODO: This is only required if PROVIDE = false
  Provider<Enhanced_Foo2> createEnhanced_Foo2Provider();

  void inject( Enhanced_Foo2 foo );

  default void bindFoo2()
  {
    InjectSupport.c_enhancer = this::inject;
  }

  final class InjectSupport
  {
    static Enhanced_Foo2.Enhancer c_enhancer;
  }

  @Module
  interface DaggerModule
  {
    // TODO: This is only required if PROVIDE = true
    @Binds
    Foo2 bindComponent( Enhanced_Foo2 component );

    @Provides
    static Enhanced_Foo2.Enhancer provideEnhancer()
    {
      return InjectSupport.c_enhancer;
    }
  }
}
