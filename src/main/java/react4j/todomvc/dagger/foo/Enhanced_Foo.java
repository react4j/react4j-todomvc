package react4j.todomvc.dagger.foo;

import elemental2.dom.DomGlobal;
import javax.annotation.Nonnull;
import javax.inject.Inject;
import react4j.todomvc.model.TodoRepository;

public final class Enhanced_Foo
  extends Foo
{
  interface Enhancer
  {
    void enhance( Enhanced_Foo object );
  }

  @Inject
  Enhanced_Foo( @Nonnull final Enhancer enhancer, @Nonnull final TodoRepository repository )
  {
    super( repository );
    enhancer.enhance( this );
    postConstruct();
  }

  private void postConstruct()
  {
    DomGlobal.console.log( "postConstruct" );
    DomGlobal.console.log( "_service=", _service );
    DomGlobal.console.log( "_repository=", _repository );
  }
}
