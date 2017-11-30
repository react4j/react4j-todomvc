require 'buildr/git_auto_version'

desc 'React4j TodoMVC implementation'
define 'react4j-todomvc' do
  project.group = 'org.realityforge.react4j.todomvc'
  compile.options.source = '1.8'
  compile.options.target = '1.8'
  compile.options.lint = 'all'

  project.version = ENV['PRODUCT_VERSION'] if ENV['PRODUCT_VERSION']

  compile.with :javax_jsr305,
               :jetbrains_annotations,
               :anodoc,
               :jsinterop_base,
               :jsinterop_base_sources,
               :jsinterop_annotations,
               :jsinterop_annotations_sources,
               :elemental2_core,
               :elemental2_dom,
               :elemental2_promise,
               :braincheck,
               :react4j_annotation,
               :react4j_core,
               :react4j_dom,
               :react4j_processor,
               :react4j_arez,
               :arez_annotations,
               :arez_core,
               :arez_processor,
               :arez_component,
               :arez_extras,
               :arez_browser_extras,
               :gwt_user

  gwt_enhance(project, :modules_complete => true, :package_jars => false)

  # The generators are configured to generate to here.
  iml.main_generated_source_directories << _('generated/processors/main/java')

  project.clean do
    rm_rf project._(:generated)
  end

  iml.excluded_directories << project._('tmp')

  ipr.add_default_testng_configuration(:jvm_args => '-ea -Dbraincheck.environment=development -Dreact4j.environment=development')
  ipr.add_component_from_artifact(:idea_codestyle)

  ipr.add_gwt_configuration(project,
                            :gwt_module => 'react4j.todomvc.TodomvcDev',
                            :start_javascript_debugger => false,
                            :vm_parameters => "-Xmx2G -Djava.io.tmpdir=#{_('tmp/gwt')}",
                            :shell_parameters => "-port 8888 -codeServerPort 8889 -bindAddress 0.0.0.0 -war #{_(:generated, 'gwt-export')}/")

  ipr.add_component('CompilerConfiguration') do |component|
    component.annotationProcessing do |xml|
      xml.profile(:default => true, :name => 'Default', :enabled => true) do
        xml.sourceOutputDir :name => 'generated/processors/main/java'
        xml.sourceTestOutputDir :name => 'generated/processors/test/java'
        xml.outputRelativeToContentRoot :value => true
      end
    end
  end
end

