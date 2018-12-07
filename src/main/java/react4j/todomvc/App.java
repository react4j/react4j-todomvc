package react4j.todomvc;

import arez.Arez;
import arez.spytools.browser.react4j.ReactArezSpyUtil;
import com.google.gwt.core.client.EntryPoint;
import elemental2.dom.DomGlobal;
import javax.inject.Provider;
import jsinterop.base.Js;
import react4j.dom.ReactDOM;
import react4j.todomvc.dagger.Foo;
import react4j.todomvc.dagger.OtherComponent;
import react4j.todomvc.dagger.TodoComponent;

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
    final Provider<Foo> provider = OtherComponent.create().getFooDaggerSubcomponent().createProvider();
    final Foo foo = provider.get();
    Js.debugger();
    ReactDOM.render( TodoListBuilder.build(), DomGlobal.document.getElementById( "todoapp" ) );
  }
}
