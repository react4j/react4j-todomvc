package react4j.todomvc.dagger.foo4;

import java.util.Map;
import java.util.Objects;
import javax.annotation.Nonnull;
import javax.inject.Inject;
import react4j.todomvc.model.TodoRepository;
import react4j.todomvc.model.TodoService;

public abstract class Foo4
{
  @Inject
  TodoService _service;
  @Nonnull
  final TodoRepository _repository;
  final Map<String, String> _props;

  Foo4( @Nonnull final TodoRepository repository,
        /* @PerInstance */ @Nonnull final Map<String, String> props )
  {
    _repository = Objects.requireNonNull( repository );
    _props = Objects.requireNonNull( props );
  }
}
