package react4j.todomvc.model;

import arez.browserlocation.BrowserLocation;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;

@Module
class BrowserLocationDaggerModule
{
  @Singleton
  @Provides
  static BrowserLocation provideBrowserLocation()
  {
    return BrowserLocation.create();
  }
}
