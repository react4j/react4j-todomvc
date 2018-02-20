def get_head_tag_if_any
  version = `git describe --exact-match --tags 2>&1`
  if 0 == $?.exitstatus && version =~ /^v[0-9]/ && (ENV['TRAVIS_BUILD_ID'].nil? || ENV['TRAVIS_TAG'].to_s != '')
    version.strip
  else
    nil
  end
end

def is_tag_on_branch?(tag, branch)
  output = `git tag --merged #{branch} 2>&1`
  tags = output.split
  tags.include?(tag)
end

def find_tag_on_candidate_branches(tag, branches)
  sh 'git fetch origin'
  branches.each do |branch|
    if is_tag_on_branch?(tag, branch)
      puts "Tag #{tag} is on branch: #{branch}"
      return branch
    elsif is_tag_on_branch?(tag, "origin/#{branch}")
      puts "Tag #{tag} is on branch: origin/#{branch}"
      return branch
    else
      puts "Tag #{tag} is not on branches: #{branch} or origin/#{branch}"
    end
  end
  nil
end

desc 'Publish release to github website iff current HEAD is a tag'
task 'publish_if_tagged' do
  candidate_branches = %w(raw arez dagger)
  tag = get_head_tag_if_any
  if tag.nil?
    puts 'Current HEAD is not a tag. Skipping publish step.'
  else
    puts "Current HEAD is a tag: #{tag}"
    branch = find_tag_on_candidate_branches(tag, candidate_branches)
    if branch
      ENV['SITE_BRANCH'] = branch
      task('site:deploy').invoke
    end
  end
end
