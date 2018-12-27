package react4j.todomvc.dagger;

import dagger.Component;
import javax.inject.Singleton;
import react4j.todomvc.dagger.foo3.Foo3DaggerComponentExtension;
import react4j.todomvc.model.BrowserLocationDaggerModule;
import react4j.todomvc.model.TodoRepositoryDaggerModule;
import react4j.todomvc.model.TodoServiceDaggerModule;
import react4j.todomvc.model.ViewServiceDaggerModule;

@Singleton
@Component( modules = { TodoRepositoryDaggerModule.class,
                        BrowserLocationDaggerModule.class,
                        TodoServiceDaggerModule.class,
                        ViewServiceDaggerModule.class,
                        Foo3DaggerComponentExtension.DaggerModule.class } )
public interface OtherComponent3
  extends Foo3DaggerComponentExtension
{
  static OtherComponent3 create()
  {
    final OtherComponent3 component = DaggerOtherComponent3.create();
    component.bindFoo3();
    return component;
  }
}
