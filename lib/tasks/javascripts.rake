# ENV["RAILS_ENV"] = "test"
require_relative "../../config/environment"

namespace :spec do
  desc "run javascript specs"
  task :javascripts do |t|
    tmp_dir = File.join(Rails.root, 'tmp', 'node')
    env = Rails.application.assets
    env.each_file.find_all { |file|
      ['.js', '.coffee'].include?(file.extname)
    }.each { |fname|
      basename = fname.basename.to_s
      asset = env[basename]
      asset.write_to(File.join(tmp_dir, fname.basename.to_s.sub(/(\.js)?\.coffee$/, '.js')))
    }
  end
end
