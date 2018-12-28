package react4j.todomvc.dagger;

import dagger.Component;
import javax.inject.Singleton;
import react4j.todomvc.dagger.foo4.Foo4DaggerComponentExtension;
import react4j.todomvc.model.BrowserLocationDaggerModule;
import react4j.todomvc.model.TodoRepositoryDaggerModule;
import react4j.todomvc.model.TodoServiceDaggerModule;
import react4j.todomvc.model.ViewServiceDaggerModule;

@Singleton
@Component( modules = { TodoRepositoryDaggerModule.class,
                        BrowserLocationDaggerModule.class,
                        TodoServiceDaggerModule.class,
                        ViewServiceDaggerModule.class,
                        Foo4DaggerComponentExtension.DaggerModule.class } )
public interface OtherComponent4
  extends Foo4DaggerComponentExtension
{
  static OtherComponent4 create()
  {
    final OtherComponent4 component = DaggerOtherComponent4.create();
    component.bindFoo4();
    return component;
  }
}
