package react4j.todomvc.model;

import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import org.realityforge.arez.browser.extras.BrowserLocation;

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
