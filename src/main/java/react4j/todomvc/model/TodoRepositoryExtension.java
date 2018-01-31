package react4j.todomvc.model;

import arez.annotations.Computed;

public interface TodoRepositoryExtension
{
  @Computed
  default boolean isEmpty()
  {
    return 0 == totalCount();
  }

  default boolean isNotEmpty()
  {
    return !isEmpty();
  }

  @Computed
  default int totalCount()
  {
    return (int) self().entities().count();
  }

  @Computed
  default int activeCount()
  {
    return (int) self().entities().filter( todo -> !todo.isCompleted() ).count();
  }

  @Computed
  default int completedCount()
  {
    return totalCount() - activeCount();
  }

  TodoRepository self();
}
