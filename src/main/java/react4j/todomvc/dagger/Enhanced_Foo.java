package react4j.todomvc.dagger;

import elemental2.dom.DomGlobal;
import java.util.function.Consumer;
import javax.annotation.Nonnull;
import react4j.todomvc.model.TodoRepository;

public class Enhanced_Foo
  extends Foo
{
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
