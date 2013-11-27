namespace :install do
  desc 'Set up symlinks to the rest of the system.'
  task :symlinks do
    require 'fileutils'
    require 'yaml'

    YAML.load(File.read('symlinks.yml')).each do |src, dst|
      src = File.join(File.dirname(__FILE__), src)
      dst = File.join(ENV['HOME'], dst)

      if File.exists?(dst) || File.symlink?(dst)
        if File.readlink(dst) == src
          next
        else
          FileUtils.mv(dst, "#{dst}.bak", verbose: true)
        end
      elsif !File.directory?(File.dirname(dst))
        FileUtils.mkdir_p(File.dirname(dst), verbose: true)
      end

      FileUtils.ln_s(src, dst, verbose: true)
    end
  end

  desc 'Install or update vim plugins with NeoBundle.'
  task :vim_plugins do
    system 'vim +NeoBundleUpdate! +qall'
  end
end

desc 'Run every install command in order.'
task :install do
  Rake::Task['install:symlinks'].invoke
  Rake::Task['install:vim_plugins'].invoke
end

task default: :install
