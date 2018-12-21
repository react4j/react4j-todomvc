package react4j.todomvc;

import arez.Arez;
import arez.spytools.browser.react4j.ReactArezSpyUtil;
import com.google.gwt.core.client.EntryPoint;
import elemental2.dom.DomGlobal;
import jsinterop.base.Js;
import react4j.dom.ReactDOM;
import react4j.todomvc.dagger.OtherComponent;
import react4j.todomvc.dagger.OtherComponent2;
import react4j.todomvc.dagger.TodoComponent;
import react4j.todomvc.dagger.foo.Foo;
import react4j.todomvc.dagger.foo2.Enhanced_Foo2;

public class App
  implements EntryPoint
{
  @Override
  public void onModuleLoad()
  {
    if ( Arez.areSpiesEnabled() )
    {
      //Avoid referencing ArezSpyUtil if spies are disabled so compiler optimizes it away
      ReactArezSpyUtil.enableSpyEventLogging();
    }
    TodoComponent.create();
    final Foo foo = OtherComponent.create().getFooDaggerSubcomponent().createProvider().get();
    final Enhanced_Foo2 foo2 = OtherComponent2.create().createEnhanced_Foo2Provider().get();
    Js.debugger();
    ReactDOM.render( TodoListBuilder.build(), DomGlobal.document.getElementById( "todoapp" ) );
  }
}
