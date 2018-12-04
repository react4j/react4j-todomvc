package react4j.todomvc.model;

public final class AppData
{
  private static final BrowserLocation location = BrowserLocation.create();
  public static final TodoRepository model = TodoRepository.newRepository();
  public static final TodoService service = new Arez_TodoService( model );
  public static final ViewService viewService = new Arez_ViewService( model, location );

  private AppData()
  {
  }
}
