package react4j.todomvc.model;

import arez.annotations.Action;
import arez.annotations.ArezComponent;
import arez.annotations.Observable;
import arez.annotations.Repository;
import arez.component.Identifiable;
import java.util.Objects;
import javax.annotation.Nonnull;

@Repository( extensions = { TodoRepositoryExtension.class } )
@ArezComponent
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

  public final int getId()
  {
    // Just extract the synthetic id. Consider replacing this with @ComponentIdRef when it is implemented
    return Objects.requireNonNull( Identifiable.getArezId( this ) );
  }

  @Observable
  @Nonnull
  public String getTitle()
  {
    return _title;
  }

  public void setTitle( @Nonnull final String title )
  {
    _title = Objects.requireNonNull( title );
  }

  @Observable
  public boolean isCompleted()
  {
    return _completed;
  }

  public void setCompleted( final boolean completed )
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
