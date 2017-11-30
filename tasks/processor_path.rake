module Buildr
  module ProcessorPath
    module ProjectExtension
      include Extension

      def processorpath
        @processorpath ||= []
      end

      before_define do |project|
        t = project.task('processors_setup') do
          mkdir_p project._(:target, 'generated/processors/main/java') unless project.processorpath.empty?
        end
        project.compile.enhance([t.name])

        if project.iml?
          project.iml.main_generated_source_directories << project._('generated/processors/main/java')
          project.clean do
            # Clean the IDE generated sources
            rm_rf project._(:generated)
          end
        end
      end

      after_define do |project|
        unless project.processorpath.empty?
          processor_deps = Buildr.artifacts(project.processorpath)
          project.compile.enhance(processor_deps)
          pp = processor_deps.collect {|d| d.to_s}.join(File::PATH_SEPARATOR)
          project.compile.options[:other] = ['-processorpath', pp]
        end

        if project.ipr?
          project.ipr.add_component('CompilerConfiguration') do |component|
            component.annotationProcessing do |xml|
              xml.profile(:default => true, :name => 'Default', :enabled => true) do
                xml.sourceOutputDir :name => 'generated/processors/main/java'
                xml.sourceTestOutputDir :name => 'generated/processors/test/java'
                xml.outputRelativeToContentRoot :value => true
                xml.processorPath :useClasspath => true
              end
              enabled = Buildr.projects(:no_invoke => true).select {|p| p.iml? && !p.processorpath.empty?}
              enabled.each do |prj|
                xml.profile(:name => "#{prj.name}", :enabled => true) do
                  xml.sourceOutputDir :name => 'generated/processors/main/java'
                  xml.sourceTestOutputDir :name => 'generated/processors/test/java'
                  xml.outputRelativeToContentRoot :value => true
                  xml.module :name => prj.iml.name
                  xml.processorPath :useClasspath => false do
                    Buildr.artifacts(prj.processorpath).each do |path|
                      xml.entry :name => project.ipr.send(:resolve_path, path.to_s)
                    end
                  end
                end
              end
              disabled = Buildr.projects(:no_invoke => true).select {|p| p.iml? && p.processorpath.empty?}
              unless disabled.empty?
                xml.profile(:name => 'Disabled') do
                  disabled.each do |p|
                    xml.module :name => p.name
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

class Buildr::Project
  include Buildr::ProcessorPath::ProjectExtension
end
