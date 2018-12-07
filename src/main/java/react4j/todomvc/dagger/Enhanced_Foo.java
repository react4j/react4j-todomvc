package react4j.todomvc.dagger;

import elemental2.dom.DomGlobal;
import java.util.function.Consumer;
import javax.annotation.Nonnull;
import javax.inject.Provider;
import org.realityforge.braincheck.Guards;
import react4j.ReactConfig;
import react4j.todomvc.model.TodoRepository;

public class Enhanced_Foo
  extends Foo
{
  static final class InjectSupport
  {
    private static Provider<Foo> c_provider;

    static void setProvider( final Provider<Foo> provider )
    {
      c_provider = provider;
    }

    static Provider<Foo> getProvider()
    {
      if ( ReactConfig.shouldCheckInvariants() )
      {
        Guards.invariant( () -> null != c_provider,
                          () -> "Attempted to create an instance of the React4j component named 'Foo' before the dependency injection provider has been initialized. Please see the documentation at https://react4j.github.io/dependency_injection for directions how to configure dependency injection." );
      }
      return c_provider;
    }
  }

  Enhanced_Foo( @Nonnull final Consumer<Enhanced_Foo> enhancer,
                @Nonnull final TodoRepository repository )
  {
    super( repository );
    enhancer.accept( this );
    postConstruct();
  }

  private void postConstruct()
  {
    DomGlobal.console.log( "postConstruct" );
    DomGlobal.console.log( "_service=", _service );
    DomGlobal.console.log( "_repository=", _repository );
  }
}
