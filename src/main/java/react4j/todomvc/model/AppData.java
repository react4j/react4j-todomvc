package react4j.todomvc.model;

import javax.annotation.Nonnull;

public final class AppData
{
  @Nonnull
  public static final TodoRepository model = TodoRepository.newRepository();
  @Nonnull
  public static final TodoService service = new Arez_TodoService( model );
  @Nonnull
  private static final BrowserLocation browserLocation = new Arez_BrowserLocation();
  @Nonnull
  public static final ViewService viewService = new Arez_ViewService( model, browserLocation );

  private AppData()
  {
  }
}
