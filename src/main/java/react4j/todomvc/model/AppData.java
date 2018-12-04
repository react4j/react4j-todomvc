package react4j.todomvc.model;

public final class AppData
{
  public static final TodoRepository model = TodoRepository.newRepository();
  public static final TodoService service = new Arez_TodoService( model );
  public static final ViewService viewService = new Arez_ViewService( model );

  private AppData()
  {
  }
}
