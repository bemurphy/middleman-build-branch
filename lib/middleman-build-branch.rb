require "middleman-build-branch/version"

if defined?(Rake)
  Rake.add_rakelib(File.expand_path('../middleman-build-branch/tasks', __FILE__))
end
