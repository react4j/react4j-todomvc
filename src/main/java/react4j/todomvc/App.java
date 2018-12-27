package react4j.todomvc;

import arez.Arez;
import arez.spytools.browser.react4j.ReactArezSpyUtil;
import com.google.gwt.core.client.EntryPoint;
import elemental2.dom.DomGlobal;
import java.util.HashMap;
import jsinterop.base.Js;
import react4j.dom.ReactDOM;
import react4j.todomvc.dagger.OtherComponent;
import react4j.todomvc.dagger.OtherComponent2;
import react4j.todomvc.dagger.OtherComponent3;
import react4j.todomvc.dagger.TodoComponent;
import react4j.todomvc.dagger.foo3.Enhanced_Foo3;

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
    OtherComponent.create().getFooDaggerSubcomponent().createProvider().get();
    OtherComponent2.create().createEnhanced_Foo2Provider().get();
    final Enhanced_Foo3.Factory foo3Factory = OtherComponent3.create().createFoo3Factory();
    final Enhanced_Foo3 foo3 = foo3Factory.create( new HashMap<>() );
    Js.debugger();
    ReactDOM.render( TodoListBuilder.build(), DomGlobal.document.getElementById( "todoapp" ) );
  }
}
