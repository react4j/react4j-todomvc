package react4j.todomvc.devtool.model;

import arez.ArezContext;
import arez.ObservableValue;
import arez.annotations.Action;
import arez.annotations.ArezComponent;
import arez.annotations.Feature;
import arez.annotations.Observable;
import arez.annotations.ObservableValueRef;
import arez.annotations.PostConstruct;
import arez.annotations.PreDispose;
import arez.spy.ComponentCreateCompleteEvent;
import arez.spy.ComponentDisposeCompleteEvent;
import arez.spy.Spy;
import arez.spy.SpyEventHandler;
import elemental2.promise.Promise;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import javax.annotation.Nonnull;

@ArezComponent( observable = Feature.ENABLE )
public abstract class ContextModel
{
  private final SpyEventHandler _handler = this::handleSpyEvent;
  @Nonnull
  private final ArezContext _targetContext;
  @Nonnull
  private final String _name;
  // This should be a @Reference and automagically observable rather than this manual stuff
  @Nonnull
  private final Map<String, ComponentTypeModel> _componentTypeRegistry = new HashMap<>();

  @Nonnull
  public static ContextModel create( @Nonnull final ArezContext context, @Nonnull final String name )
  {
    return new Arez_ContextModel( context, name );
  }

  ContextModel( @Nonnull final ArezContext targetContext, @Nonnull final String name )
  {
    _targetContext = Objects.requireNonNull( targetContext );
    _name = Objects.requireNonNull( name );
  }

  @PostConstruct
  final void postConstruct()
  {
    _targetContext.getSpy().addSpyEventHandler( _handler );
    build();
  }

  @PreDispose
  final void preDispose()
  {
    _targetContext.getSpy().removeSpyEventHandler( _handler );
  }

  @Nonnull
  public String getName()
  {
    return _name;
  }

  @Nonnull
  private ArezContext getTargetContext()
  {
    return _targetContext;
  }

  @Nonnull
  private Spy getSpy()
  {
    return getTargetContext().getSpy();
  }

  @Action( verifyRequired = false )
  void build()
  {
    final Spy spy = getSpy();
    for ( final String componentType : spy.findAllComponentTypes() )
    {
      final ComponentTypeModel model = ComponentTypeModel.create( componentType );
      model.setComponentCount( spy.findAllComponentsByType( componentType ).size() );
      _componentTypeRegistry.put( componentType, model );
    }
  }

  void handleSpyEvent( @Nonnull final Object o )
  {
    // TODO: Instead we should batch them all up and process later
    Promise.resolve( this ).then( v -> {
      processEvent( o );
      return null;
    } );
  }

  @Action( verifyRequired = false )
  void processEvent( @Nonnull final Object o )
  {
    if ( o instanceof ComponentCreateCompleteEvent )
    {
      final ComponentCreateCompleteEvent e = (ComponentCreateCompleteEvent) o;
      final ComponentTypeModel model = getComponentTypeByName( e.getComponentInfo().getType() );
      model.setComponentCount( model.componentCount() + 1 );
    }
    else if ( o instanceof ComponentDisposeCompleteEvent )
    {
      final ComponentDisposeCompleteEvent e = (ComponentDisposeCompleteEvent) o;
      final ComponentTypeModel model = getComponentTypeByName( e.getComponentInfo().getType() );
      model.setComponentCount( model.componentCount() - 1 );
    }
  }

  @Observable( expectSetter = false )
  @Nonnull
  public Map<String, ComponentTypeModel> getComponentTypeRegistry()
  {
    return _componentTypeRegistry;
  }

  @ObservableValueRef
  abstract ObservableValue getComponentTypeRegistryObservableValue();

  @Nonnull
  private ComponentTypeModel getComponentTypeByName( @Nonnull final String componentType )
  {
    final ComponentTypeModel model = _componentTypeRegistry.get( componentType );
    if ( null == model )
    {
      getComponentTypeRegistryObservableValue().preReportChanged();
      final ComponentTypeModel newModel = ComponentTypeModel.create( componentType );
      _componentTypeRegistry.put( componentType, newModel );
      getComponentTypeRegistryObservableValue().reportChanged();
      return newModel;
    }
    else
    {
      return model;
    }
  }
}
