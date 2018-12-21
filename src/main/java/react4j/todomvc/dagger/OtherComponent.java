package react4j.todomvc.dagger;

import dagger.Component;
import javax.inject.Singleton;
import react4j.todomvc.dagger.foo.FooDaggerComponentExtension;
import react4j.todomvc.model.BrowserLocationDaggerModule;
import react4j.todomvc.model.TodoRepositoryDaggerModule;
import react4j.todomvc.model.TodoServiceDaggerModule;
import react4j.todomvc.model.ViewServiceDaggerModule;

@Singleton
@Component( modules = { TodoRepositoryDaggerModule.class,
                        BrowserLocationDaggerModule.class,
                        TodoServiceDaggerModule.class,
                        ViewServiceDaggerModule.class } )
public interface OtherComponent
  extends FooDaggerComponentExtension
{
  static OtherComponent create()
  {
    final OtherComponent component = DaggerOtherComponent.create();
    component.bindFoo();
    return component;
  }
}
