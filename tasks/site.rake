WORKSPACE_DIR = File.expand_path(File.dirname(__FILE__) + '/..')

def in_dir(dir)
  current = Dir.pwd
  begin
    Dir.chdir(dir)
    yield
  ensure
    Dir.chdir(current)
  end
end

SITE_DIR = "#{WORKSPACE_DIR}/reports/site"

desc 'Build the part of the website for this branch'
task 'site:build' do
  project = Buildr.project('react4j-todomvc')
  branch = ENV['SITE_BRANCH'] || `git rev-parse --abbrev-ref HEAD`.strip
  base_dir = "#{SITE_DIR}/#{branch}"
  rm_rf base_dir
  mkdir_p base_dir

  %w(react4j.todomvc.TodomvcDev react4j.todomvc.TodomvcProd).each do |dir|
    output_dir = project._(:target, :generated, :gwt, dir)
    file(output_dir).invoke
    cp_r Dir["#{output_dir}/*"], base_dir
    rm_f Dir["#{base_dir}/**/*.devmode.js"]
    rm_f Dir["#{base_dir}/**/compilation-mappings.txt"]

    cp_r project._('src/main/webapp/css'), "#{base_dir}/css"
    cp project._('src/main/webapp/index.html'), "#{base_dir}/index.html"

    content = IO.read(project._('src/main/webapp/dev.html')).gsub('http://127.0.0.1:8888/', '')
    IO.write("#{base_dir}/dev.html", content)
  end
end

desc 'Build the website'
task 'site:deploy' => ['site:build'] do
  origin_url = 'https://github.com/react4j/react4j-todomvc.git'

  travis_build_number = ENV['TRAVIS_BUILD_NUMBER']
  if travis_build_number
    origin_url = origin_url.gsub('https://github.com/', 'git@github.com:')
  end

  local_dir = "#{WORKSPACE_DIR}/target/remote_site"
  # This is only invoked on selected branches if running out of Travis
  # in which case SITE_BRANCH is set
  branch = ENV['SITE_BRANCH'] || `git rev-parse --abbrev-ref HEAD`.strip
  rm_rf local_dir

  sh "git clone -b gh-pages #{origin_url} #{local_dir}"

  in_dir(local_dir) do
    message =
      "Update website based on source branch #{branch}#{travis_build_number.nil? ? '' : " - Travis build: #{travis_build_number}"}"

    rm_rf "#{local_dir}/#{branch}"
    cp_r "#{SITE_DIR}/#{branch}", "#{local_dir}/#{branch}"
    sh 'git add . -f'
    sh "git commit -m \"#{message}\""
    sh 'git push -f origin gh-pages'
  end
end
