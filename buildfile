require 'buildr/git_auto_version'
require 'buildr/gwt'

DAGGER_RUNTIME_DEPS = [:javax_inject, :javax_inject_sources, :dagger_core, :dagger_core_sources, :dagger_gwt]
DAGGER_PROCESSOR_DEPS =
  [
    :javax_inject,
    :dagger_core,
    :dagger_producers,
    :dagger_spi,
    :dagger_compiler,
    :guava_failureaccess,
    :kotlinx_metadata_jvm,
    :kotlin_stdlib,
    :kotlin_stdlib_common,
    :googlejavaformat,
    :errorprone,
    :javapoet,
    :guava
  ]

desc 'React4j TodoMVC implementation'
define 'react4j-todomvc' do
  project.group = 'org.realityforge.react4j.todomvc'
  compile.options.source = '1.8'
  compile.options.target = '1.8'
  compile.options.lint = 'all'

  project.version = ENV['PRODUCT_VERSION'] if ENV['PRODUCT_VERSION']

  project.processorpath << :react4j_processor
  project.processorpath << :arez_processor
  project.processorpath << DAGGER_PROCESSOR_DEPS

  compile.with :javax_annotation,
               :jetbrains_annotations,
               :jsinterop_base,
               :jsinterop_annotations,
               :elemental2_core,
               :elemental2_dom,
               :elemental2_promise,
               :braincheck,
               :grim_annotations,
               :react4j_core,
               :react4j_dom,
               :arez_core,
               :arez_spytools,
               DAGGER_RUNTIME_DEPS,
               :gwt_user

  # Exclude the Dev module if EXCLUDE_GWT_DEV_MODULE is true
  GWT_MODULES = %w(react4j.todomvc.TodomvcProd) + (ENV['EXCLUDE_GWT_DEV_MODULE'] == 'true' ? [] : %w(react4j.todomvc.TodomvcDev))
  gwt_enhance(project,
              :modules_complete => true,
              :package_jars => false,
              :gwt_modules => GWT_MODULES,
              :module_gwtc_args => {
                'react4j.todomvc.TodomvcDev' => %w(-optimize 9 -checkAssertions -XmethodNameDisplayMode FULL -noincremental),
                'react4j.todomvc.TodomvcProd' => %w(-XdisableClassMetadata -XdisableCastChecking -optimize 9 -nocheckAssertions -XmethodNameDisplayMode NONE -noincremental -compileReport)
              })

  iml.excluded_directories << project._('tmp')
  # Also ignore bazel directories for when we switch branches
  iml.excluded_directories << project._('bazel-bin')
  iml.excluded_directories << project._('bazel-out')
  iml.excluded_directories << project._('bazel-react4j-todomvc')
  iml.excluded_directories << project._('bazel-testlogs')

  ipr.add_component_from_artifact(:idea_codestyle)

  ipr.add_gwt_configuration(project,
                            :gwt_module => 'react4j.todomvc.TodomvcDev',
                            :start_javascript_debugger => false,
                            :open_in_browser => false,
                            :vm_parameters => '-Xmx2G',
                            :shell_parameters => "-strict -style PRETTY -XmethodNameDisplayMode FULL -nostartServer -incremental -codeServerPort 8889 -bindAddress 0.0.0.0 -deploy #{_(:generated, :gwt, 'deploy')} -extra #{_(:generated, :gwt, 'extra')} -war #{_(:generated, :gwt, 'war')}",
                            :launch_page => 'http://127.0.0.1:8889/todomvc_dev/index.html')
end
