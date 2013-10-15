namespace :install do
  desc 'Pull git submodules like zsh and vim plugins.'
  task :submodules do
    system 'bin/git-pull-all'
  end

  desc 'Set up symlinks to the rest of the system.'
  task :symlinks do
    require 'fileutils'
    require 'yaml'

    YAML.load(File.read('symlinks.yml')).each do |src, dst|
      src = File.join(File.dirname(__FILE__), src)
      dst = File.join(ENV['HOME'], dst)

      FileUtils.mkdir_p(File.dirname(dst)) rescue nil
      FileUtils.ln_s(src, dst, verbose: true, force: true)
    end
  end

  desc 'Install or update vim plugins with NeoBundle.'
  task :vim_plugins do
    system 'vim +NeoBundleUpdate! +qall'
  end
end

desc 'Run every install command in order.'
task :install do
  Rake::Task['install:submodules'].invoke

  Rake::Task['install:symlinks'].invoke
  Rake::Task['install:vim_plugins'].invoke
end

task default: [:install]
