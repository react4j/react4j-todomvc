package react4j.todomvc.model;

import javax.annotation.Nonnull;

public final class AppData
{
  @Nonnull
  public static final TodoRepository service = new TodoRepository();
  @Nonnull
  public static final ViewService viewService = new ViewService( service );

  private AppData()
  {
  }
}
