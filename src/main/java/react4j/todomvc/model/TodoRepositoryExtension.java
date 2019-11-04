package react4j.todomvc.model;

import arez.annotations.Memoize;

public interface TodoRepositoryExtension
{
  @Memoize
  default boolean isEmpty()
  {
    return 0 == totalCount();
  }

  default boolean isNotEmpty()
  {
    return !isEmpty();
  }

  @Memoize
  default int totalCount()
  {
    return (int) self().entities().count();
  }

  @Memoize
  default int activeCount()
  {
    return (int) self().entities().filter( todo -> !todo.isCompleted() ).count();
  }

  @Memoize
  default int completedCount()
  {
    return totalCount() - activeCount();
  }

  TodoRepository self();
}
