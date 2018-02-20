require 'buildr/git_auto_version'

desc 'React4j TodoMVC implementation'
define 'react4j-todomvc' do
  project.group = 'org.realityforge.react4j.todomvc'
  compile.options.source = '1.8'
  compile.options.target = '1.8'
  compile.options.lint = 'all'

  project.version = ENV['PRODUCT_VERSION'] if ENV['PRODUCT_VERSION']

  project.processorpath << :react4j_processor

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
               :gwt_user

  gwt_enhance(project,
              :modules_complete => true,
              :package_jars => false,
              :gwt_modules => %w(react4j.todomvc.TodomvcDev react4j.todomvc.TodomvcProd),
              :module_gwtc_args => {
                'react4j.todomvc.TodomvcDev' => %w(-optimize 9 -checkAssertions -XmethodNameDisplayMode FULL -noincremental),
                'react4j.todomvc.TodomvcProd' => %w(-XdisableClassMetadata -XdisableCastChecking -optimize 9 -nocheckAssertions -XmethodNameDisplayMode NONE -noincremental -compileReport)
              })

  iml.excluded_directories << project._('tmp')

  ipr.add_component_from_artifact(:idea_codestyle)

  ipr.add_gwt_configuration(project,
                            :gwt_module => 'react4j.todomvc.TodomvcDev',
                            :start_javascript_debugger => false,
                            :vm_parameters => "-Xmx2G -Djava.io.tmpdir=#{_('tmp/gwt')}",
                            :shell_parameters => "-style PRETTY -XmethodNameDisplayMode FULL -noincremental -port 8888 -codeServerPort 8889 -bindAddress 0.0.0.0 -war #{_(:generated, 'gwt-export')}/")
end
