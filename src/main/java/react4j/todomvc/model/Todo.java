package react4j.todomvc.model;

import arez.annotations.Action;
import arez.annotations.ArezComponent;
import arez.annotations.Feature;
import arez.annotations.Observable;
import java.util.Objects;
import javax.annotation.Nonnull;

@ArezComponent( requireId = Feature.ENABLE, requireEquals = Feature.ENABLE, observable = Feature.ENABLE )
public abstract class Todo
{
  @Nonnull
  private String _title;
  private boolean _completed;

  Todo( @Nonnull final String title, final boolean completed )
  {
    _title = Objects.requireNonNull( title );
    _completed = completed;
  }

  @Observable
  @Nonnull
  public String getTitle()
  {
    return _title;
  }

  void setTitle( @Nonnull final String title )
  {
    _title = Objects.requireNonNull( title );
  }

  @Observable
  public boolean isCompleted()
  {
    return _completed;
  }

  void setCompleted( final boolean completed )
  {
    _completed = completed;
  }

  @Action
  public void toggle()
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
