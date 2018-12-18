package react4j.todomvc.dagger.foo2;

import elemental2.dom.DomGlobal;
import java.util.function.Consumer;
import javax.annotation.Nonnull;
import react4j.todomvc.model.TodoRepository;

public class Enhanced_Foo2
  extends Foo2
{
  Enhanced_Foo2( @Nonnull final Consumer<Enhanced_Foo2> enhancer,
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
