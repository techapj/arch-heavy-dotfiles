namespace :install do
  desc "Install or update Luakit's adblock filters."
  task :adblock do
    system 'bin/update-adblock'
  end

  desc 'Pull git submodules like zsh and vim plugins.'
  task :submodules do
    system 'bin/git-pull-all'
  end

  desc 'Set up symlinks to the rest of the system.'
  task :symlinks do
    require 'fileutils'
    require 'yaml'

    YAML.load(File.read('symlinks.yml')).each do |src, dst|
      src = File.join(Dir.pwd, src)
      dst = File.join(ENV['HOME'], dst)

      unless File.exists?(dst)
        unless Dir.exists?(File.dirname(dst))
          FileUtils.mkdir_p(File.dirname(dst))
        end

        File.symlink(src, dst) and puts "#{src} -> #{dst}"
      end
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

  Rake::Task['install:adblock'].invoke
  Rake::Task['install:symlinks'].invoke
  Rake::Task['install:vim_plugins'].invoke
end

task default: [:install]
