package react4j.todomvc.dagger;

import java.util.Objects;
import javax.annotation.Nonnull;
import javax.inject.Inject;
import react4j.todomvc.model.TodoRepository;
import react4j.todomvc.model.TodoService;

public abstract class Foo
{
  @Inject
  TodoService _service;
  @Nonnull
  final TodoRepository _repository;

  Foo( @Nonnull final TodoRepository repository )
  {
    _repository = Objects.requireNonNull( repository );
  }
}
