package react4j.todomvc.model;

import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;

@Module
class TodoServiceModule
{
  @Singleton
  @Provides
  static TodoService provideTodoService( final Arez_TodoService service )
  {
    return service;
  }
}
