package react4j.todomvc.model;

import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import org.realityforge.arez.browser.extras.BrowserLocation;

@Module
class TodoServiceModule
{
  @Singleton
  @Provides
  static TodoService provideTodoService( final Arez_TodoService service )
  {
    return service;
  }

  @Singleton
  @Provides
  static ViewService provideViewService( final Arez_ViewService service )
  {
    return service;
  }

  @Singleton
  @Provides
  static BrowserLocation provideBrowserLocation()
  {
    return BrowserLocation.create();
  }
}
