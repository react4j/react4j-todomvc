package react4j.todomvc;

import arez.Disposable;
import java.util.Objects;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import react4j.dom.events.ClipboardEvent;
import react4j.dom.events.ClipboardEventHandler;
import react4j.dom.events.CompositionEvent;
import react4j.dom.events.CompositionEventHandler;
import react4j.dom.events.DragEvent;
import react4j.dom.events.DragEventHandler;
import react4j.dom.events.FocusEvent;
import react4j.dom.events.FocusEventHandler;
import react4j.dom.events.FormEvent;
import react4j.dom.events.FormEventHandler;
import react4j.dom.events.KeyboardEvent;
import react4j.dom.events.KeyboardEventHandler;
import react4j.dom.events.MouseEvent;
import react4j.dom.events.MouseEventHandler;
import react4j.dom.events.TouchEvent;
import react4j.dom.events.TouchEventHandler;
import react4j.dom.events.UIEvent;
import react4j.dom.events.UIEventHandler;
import react4j.dom.events.WheelEvent;
import react4j.dom.events.WheelEventHandler;
import spritz.Spritz;
import spritz.Stream;
import spritz.Subject;

public final class CallbackAdapter<E, H>
  implements Disposable
{
  @Nonnull
  private final Subject<E> _subject;
  @Nonnull
  private final H _callback;
  private boolean _disposed;

  private CallbackAdapter( @Nonnull final Subject<E> subject, @Nonnull final H callback )
  {
    _subject = Objects.requireNonNull( subject );
    _callback = Objects.requireNonNull( callback );
  }

  @Nonnull
  public Stream<E> getStream()
  {
    return _subject;
  }

  @Nonnull
  public H getCallback()
  {
    return _callback;
  }

  @Override
  public void dispose()
  {
    if ( !_disposed )
    {
      _disposed = true;
      _subject.complete();
    }
  }

  @Override
  public boolean isDisposed()
  {
    return _disposed;
  }

  @Nonnull
  public static CallbackAdapter<ClipboardEvent, ClipboardEventHandler> clipboard()
  {
    return clipboard( null );
  }

  @Nonnull
  public static CallbackAdapter<ClipboardEvent, ClipboardEventHandler> clipboard( @Nullable final String name )
  {
    final Subject<ClipboardEvent> subject =
      Stream.subject( Spritz.areNamesEnabled() ? generateName( name, "clipboard" ) : null );
    return new CallbackAdapter<>( subject, subject::next );
  }

  @Nonnull
  public static CallbackAdapter<CompositionEvent, CompositionEventHandler> composition()
  {
    return composition( null );
  }

  @Nonnull
  public static CallbackAdapter<CompositionEvent, CompositionEventHandler> composition( @Nullable final String name )
  {
    final Subject<CompositionEvent> subject =
      Stream.subject( Spritz.areNamesEnabled() ? generateName( name, "composition" ) : null );
    return new CallbackAdapter<>( subject, subject::next );
  }

  @Nonnull
  public static CallbackAdapter<DragEvent, DragEventHandler> drag()
  {
    return drag( null );
  }

  @Nonnull
  public static CallbackAdapter<DragEvent, DragEventHandler> drag( @Nullable final String name )
  {
    final Subject<DragEvent> subject =
      Stream.subject( Spritz.areNamesEnabled() ? generateName( name, "drag" ) : null );
    return new CallbackAdapter<>( subject, subject::next );
  }

  @Nonnull
  public static CallbackAdapter<FocusEvent, FocusEventHandler> focus()
  {
    return focus( null );
  }

  @Nonnull
  public static CallbackAdapter<FocusEvent, FocusEventHandler> focus( @Nullable final String name )
  {
    final Subject<FocusEvent> subject =
      Stream.subject( Spritz.areNamesEnabled() ? generateName( name, "focus" ) : null );
    return new CallbackAdapter<>( subject, subject::next );
  }

  @Nonnull
  public static CallbackAdapter<FormEvent, FormEventHandler> form()
  {
    return form( null );
  }

  @Nonnull
  public static CallbackAdapter<FormEvent, FormEventHandler> form( @Nullable final String name )
  {
    final Subject<FormEvent> subject =
      Stream.subject( Spritz.areNamesEnabled() ? generateName( name, "form" ) : null );
    return new CallbackAdapter<>( subject, subject::next );
  }

  @Nonnull
  public static CallbackAdapter<KeyboardEvent, KeyboardEventHandler> keyboard()
  {
    return keyboard( null );
  }

  @Nonnull
  public static CallbackAdapter<KeyboardEvent, KeyboardEventHandler> keyboard( @Nullable final String name )
  {
    final Subject<KeyboardEvent> subject =
      Stream.subject( Spritz.areNamesEnabled() ? generateName( name, "keyboard" ) : null );
    return new CallbackAdapter<>( subject, subject::next );
  }

  @Nonnull
  public static CallbackAdapter<TouchEvent, TouchEventHandler> touch()
  {
    return touch( null );
  }

  @Nonnull
  public static CallbackAdapter<TouchEvent, TouchEventHandler> touch( @Nullable final String name )
  {
    final Subject<TouchEvent> subject =
      Stream.subject( Spritz.areNamesEnabled() ? generateName( name, "touch" ) : null );
    return new CallbackAdapter<>( subject, subject::next );
  }

  @Nonnull
  public static CallbackAdapter<UIEvent, UIEventHandler> ui()
  {
    return ui( null );
  }

  @Nonnull
  public static CallbackAdapter<UIEvent, UIEventHandler> ui( @Nullable final String name )
  {
    final Subject<UIEvent> subject =
      Stream.subject( Spritz.areNamesEnabled() ? generateName( name, "ui" ) : null );
    return new CallbackAdapter<>( subject, subject::next );
  }

  @Nonnull
  public static CallbackAdapter<WheelEvent, WheelEventHandler> wheel()
  {
    return wheel( null );
  }

  @Nonnull
  public static CallbackAdapter<WheelEvent, WheelEventHandler> wheel( @Nullable final String name )
  {
    final Subject<WheelEvent> subject =
      Stream.subject( Spritz.areNamesEnabled() ? generateName( name, "wheel" ) : null );
    return new CallbackAdapter<>( subject, subject::next );
  }

  @Nonnull
  public static CallbackAdapter<MouseEvent, MouseEventHandler> mouse()
  {
    return mouse( null );
  }

  @Nonnull
  public static CallbackAdapter<MouseEvent, MouseEventHandler> mouse( @Nullable final String name )
  {
    final Subject<MouseEvent> subject =
      Stream.subject( Spritz.areNamesEnabled() ? generateName( name, "mouse" ) : null );
    return new CallbackAdapter<>( subject, subject::next );
  }

  /**
   * Build name.
   * If {@link Spritz#areNamesEnabled()} returns false then this method will return null, otherwise the specified
   * name will be returned or a name synthesized from the prefix if no name is
   * specified.
   *
   * @param name   the name specified by the user.
   * @param prefix the prefix used if this method needs to generate name.
   * @return the name.
   */
  @Nullable
  private static String generateName( @Nullable final String name, @Nonnull final String prefix )
  {
    return Spritz.areNamesEnabled() ?
           null != name ? name : prefix + "()" :
           null;
  }
}
