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
    return self().entities().size();
  }

  @Computed
  default int activeCount()
  {
    return (int) self().entities().stream().filter( todo -> !todo.isCompleted() ).count();
  }

  @Computed
  default int completedCount()
  {
    return totalCount() - activeCount();
  }

  TodoRepository self();
}
