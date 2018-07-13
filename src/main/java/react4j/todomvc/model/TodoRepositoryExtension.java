package react4j.todomvc.model;

/*
 * Re-add the @Computed annotations when https://github.com/google/j2cl/issues/2 is addressed
 */
public interface TodoRepositoryExtension
{
  //TODO (Readd this once J2CL supports it): @Computed
  default boolean isEmpty()
  {
    return 0 == totalCount();
  }

  default boolean isNotEmpty()
  {
    return !isEmpty();
  }

  //TODO (Readd this once J2CL supports it): @Computed
  default int totalCount()
  {
    return (int) self().entities().count();
  }

  //TODO (Readd this once J2CL supports it): @Computed
  default int activeCount()
  {
    return (int) self().entities().filter( todo -> !todo.isCompleted() ).count();
  }

  //TODO (Readd this once J2CL supports it): @Computed
  default int completedCount()
  {
    return totalCount() - activeCount();
  }

  TodoRepository self();
}
