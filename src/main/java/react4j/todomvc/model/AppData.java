package react4j.todomvc.model;

import org.realityforge.arez.browser.extras.BrowserLocation;

public final class AppData
{
  public static final ViewService viewService = new Arez_ViewService( BrowserLocation.create() );

  private AppData()
  {
  }
}
