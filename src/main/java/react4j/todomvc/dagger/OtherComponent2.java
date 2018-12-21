package react4j.todomvc.dagger;

import dagger.Component;
import javax.inject.Singleton;
import react4j.todomvc.dagger.foo2.Foo2DaggerComponentExtension;
import react4j.todomvc.model.BrowserLocationDaggerModule;
import react4j.todomvc.model.TodoRepositoryDaggerModule;
import react4j.todomvc.model.TodoServiceDaggerModule;
import react4j.todomvc.model.ViewServiceDaggerModule;

@Singleton
@Component( modules = { TodoRepositoryDaggerModule.class,
                        BrowserLocationDaggerModule.class,
                        TodoServiceDaggerModule.class,
                        ViewServiceDaggerModule.class,
                        Foo2DaggerComponentExtension.DaggerModule.class } )
public interface OtherComponent2
  extends Foo2DaggerComponentExtension
{
  static OtherComponent2 create()
  {
    final OtherComponent2 component = DaggerOtherComponent2.create();
    component.bindFoo2();
    return component;
  }
}
