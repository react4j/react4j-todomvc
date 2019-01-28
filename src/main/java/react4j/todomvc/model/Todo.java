package react4j.todomvc.model;

import java.util.Objects;
import javax.annotation.Nonnull;
import react4j.Keyed;

public final class Todo
  implements Keyed
{
  @Nonnull
  private String _id;
  @Nonnull
  private String _title;
  private boolean _completed;

  Todo( @Nonnull final String id, @Nonnull final String title, final boolean completed )
  {
    _id = Objects.requireNonNull( id );
    _title = Objects.requireNonNull( title );
    _completed = completed;
  }

  @Nonnull
  @Override
  public String getKey()
  {
    return getId();
  }

  @Nonnull
  public final String getId()
  {
    return _id;
  }

  @Nonnull
  public String getTitle()
  {
    return _title;
  }

  void setTitle( @Nonnull final String title )
  {
    _title = Objects.requireNonNull( title );
  }

  public boolean isCompleted()
  {
    return _completed;
  }

  void setCompleted( final boolean completed )
  {
    _completed = completed;
  }

  void toggle()
  {
    setCompleted( !isCompleted() );
  }

  boolean shouldShowTodo( @Nonnull final FilterMode filterMode )
  {
    if ( FilterMode.ALL == filterMode )
    {
      return true;
    }
    else if ( FilterMode.ACTIVE == filterMode )
    {
      return !isCompleted();
    }
    else
    {
      return isCompleted();
    }
  }
}
