package react4j.todomvc.dagger.foo;

import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.Subcomponent;
import javax.inject.Provider;

public interface FooDaggerComponentExtension
{
  DaggerSubcomponent getFooDaggerSubcomponent();

  default void bindFoo()
  {
    InjectSupport.c_enhancer = instance -> getFooDaggerSubcomponent().inject( instance );
  }

  final class InjectSupport
  {
    private static Enhanced_Foo.Enhancer c_enhancer;
  }

  @Module( includes = EnhancerDaggerModule.class )
  interface DaggerModule
  {
    @Binds
    Object bindComponent( Enhanced_Foo component );
  }

  // Need a separate module here due to limitations in Javapoet
  @Module
  class EnhancerDaggerModule
  {
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

    Provider<Object> createFooProvider();

    @SuppressWarnings( "unchecked" )
    default Provider<Foo> createProvider()
    {
      return (Provider<Foo>) (Provider) createFooProvider();
    }
  }
}
