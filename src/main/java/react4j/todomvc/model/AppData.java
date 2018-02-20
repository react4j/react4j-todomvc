package react4j.todomvc.model;

import arez.browser.extras.BrowserLocation;

public final class AppData
{
  public static final TodoRepository service = new TodoRepository();
  public static final BrowserLocation location = BrowserLocation.create();
  public static final ViewService viewService = new Arez_ViewService( model, location );

  private AppData()
  {
  }
}
