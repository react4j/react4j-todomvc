package react4j.todomvc.dagger.foo3;

import elemental2.dom.DomGlobal;
import java.util.Map;
import java.util.Objects;
import javax.annotation.Nonnull;
import javax.inject.Inject;
import react4j.todomvc.model.TodoRepository;

public final class Enhanced_Foo3
  extends Foo3
{
  public static class Factory
  {
    private final Enhancer _enhancer;
    private final TodoRepository _repository;

    @Inject
    Factory( @Nonnull final Enhancer enhancer, @Nonnull final TodoRepository repository )
    {
      _enhancer = Objects.requireNonNull( enhancer );
      _repository = Objects.requireNonNull( repository );
    }

    @Nonnull
    public Enhanced_Foo3 create( @Nonnull final Map<String, String> props )
    {
      return new Enhanced_Foo3( _enhancer, _repository, props );
    }
  }

  interface Enhancer
  {
    void enhance( Enhanced_Foo3 object );
  }

  // TODO This is private
  private Enhanced_Foo3( @Nonnull final Enhancer enhancer,
                         @Nonnull final TodoRepository repository,
                         @Nonnull final Map<String, String> props )
  {
    super( repository, props );
    enhancer.enhance( this );
    postConstruct();

  }

  private void postConstruct()
  {
    DomGlobal.console.log( "postConstruct" );
    DomGlobal.console.log( "_service=", _service );
    DomGlobal.console.log( "_repository=", _repository );
    DomGlobal.console.log( "_props=", _props );
  }
}
