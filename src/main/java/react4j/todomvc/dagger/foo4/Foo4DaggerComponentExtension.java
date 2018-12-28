package react4j.todomvc.dagger.foo4;

import dagger.Module;
import dagger.Provides;
import dagger.Subcomponent;

public interface Foo4DaggerComponentExtension
{
  DaggerSubcomponent getFoo4DaggerSubcomponent();

  default void bindFoo4()
  {
    InjectSupport.c_enhancer = instance -> getFoo4DaggerSubcomponent().inject( instance );
  }

  final class InjectSupport
  {
    private static Enhanced_Foo4.Enhancer c_enhancer;
  }

  @Module
  class DaggerModule
  {
    @Provides
    static Enhanced_Foo4.Enhancer provideEnhancer()
    {
      return InjectSupport.c_enhancer;
    }
  }

  @Subcomponent( modules = DaggerModule.class )
  interface DaggerSubcomponent
  {
    void inject( Enhanced_Foo4 foo );

    Enhanced_Foo4.Factory createFoo4Factory();
  }
}
