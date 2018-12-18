package react4j.todomvc.dagger;

import dagger.Component;
import javax.inject.Provider;
import javax.inject.Singleton;
import react4j.todomvc.dagger.foo2.Foo2;
import react4j.todomvc.dagger.foo2.FooDaggerFactory2;
import react4j.todomvc.model.BrowserLocationDaggerModule;
import react4j.todomvc.model.TodoRepositoryDaggerModule;
import react4j.todomvc.model.TodoServiceDaggerModule;
import react4j.todomvc.model.ViewServiceDaggerModule;

@Singleton
@Component( modules = { TodoRepositoryDaggerModule.class,
                        BrowserLocationDaggerModule.class,
                        TodoServiceDaggerModule.class,
                        ViewServiceDaggerModule.class,
                        FooDaggerFactory2.DaggerModule.class } )
public interface OtherComponent2
  extends FooDaggerFactory2
{
  Provider<Foo2> createProvider();

  static OtherComponent2 create()
  {
    final OtherComponent2 component = DaggerOtherComponent2.create();
    component.bindFoo2();
    return component;
  }
}
