package react4j.todomvc.ioc;

import javax.annotation.Nonnull;
import react4j.todomvc.ViewsFragment;
import react4j.todomvc.model.ModelFragment;
import sting.Injector;

@Injector( includes = { ViewsFragment.class, ModelFragment.class } )
public interface TodoInjector
{
  @SuppressWarnings( "UnusedReturnValue" )
  @Nonnull
  static TodoInjector create()
  {
    return new Sting_TodoInjector();
  }
}
