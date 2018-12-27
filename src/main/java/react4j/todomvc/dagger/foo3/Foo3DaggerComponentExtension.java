package react4j.todomvc.dagger.foo3;

import dagger.Module;
import dagger.Provides;

public interface Foo3DaggerComponentExtension
{
  Enhanced_Foo3.Factory createFoo3Factory();

  void inject( Enhanced_Foo3 foo );

  default void bindFoo3()
  {
    InjectSupport.c_enhancer = this::inject;
  }

  final class InjectSupport
  {
    private static Enhanced_Foo3.Enhancer c_enhancer;
  }

  @Module
  class DaggerModule
  {
    @Provides
    static Enhanced_Foo3.Enhancer provideEnhancer()
    {
      return InjectSupport.c_enhancer;
    }
  }
}
