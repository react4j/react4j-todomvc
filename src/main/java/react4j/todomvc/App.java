package react4j.todomvc;

import arez.Arez;
import com.google.gwt.core.client.EntryPoint;
import elemental2.dom.DomGlobal;
import react4j.dom.ReactDOM;
import react4j.todomvc.model.AppData;
import react4j.todomvc.model.ViewService;

public class App
  implements EntryPoint
{
  @Override
  public void onModuleLoad()
  {
    if ( Arez.areSpiesEnabled() )
    {
      //Avoid referencing ArezSpyUtil if spies are disabled so compiler optimizes it away
      //ReactArezSpyUtil.enableSpyEventLogging();

      final PostMessageSpyEventHandler handler = new PostMessageSpyEventHandler();
      Arez.context().setEnvironment( handler );
      Arez.context().getSpy().addSpyEventHandler( handler );

      //final EventListener eventListener = m -> {
      //  @SuppressWarnings( "unchecked" )
      //  final MessageEvent<JsPropertyMap<Object>> message = (MessageEvent<JsPropertyMap<Object>>) m;
      //  DomGlobal.console.log( message.data );
      //};
      //DomGlobal.window.addEventListener( "message", eventListener, false);
      DomGlobal.window.addEventListener( "message",
                                         new PostMessageConsoleEventHandler( DomGlobal.location.getOrigin() ),
                                         false );
    }
    // This next line forces the creation of all the resources, ensuring that the transactions
    // are not wrapped in another transaction
    @SuppressWarnings( "unused" )
    final ViewService viewService = AppData.viewService;
    ReactDOM.render( TodoListBuilder.build(), DomGlobal.document.getElementById( "todoapp" ) );
  }
}
