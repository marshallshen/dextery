module Dextery
  module Generator
    def self.manifest(args, options = {})
      raise ArgumentError.new("You must specify a path") if args.empty?

      new_blog_path = File.expand_path(args.join(" "), Dir.pwd)
      FileUtils.mkdir_p new_blog_path
      if preserve_source_location?(new_blog_path, options)
        Dextery.logger.error "Conflict:", "#{new_blog_path} exists and is not empty."
      else
        clean_directory(new_blog_path)
        copy_bootstrap(new_blog_path)
        notify_success
      end
    end

    private
    def self.preserve_source_location?(path, options)
      !options[:force] && !Dir["#{path}/**/*"].empty?
    end

    def self.clean_directory(path)
      Dextery.logger.info "Check directory #{path}.. Start"
      system("rm -rf #{path}")
      Dextery.logger.info "Check directory #{path}.. Complete"
    end

    def self.copy_bootstrap(path)
      Dextery.logger.info "Setup blog using bootstrap.. Start"
      system( "cp -r lib/dextery/jekyll-bootstrap/ #{path}")
      Dextery.logger.info "Setup blog using bootstrap.. Complete"
    end

    def self.notify_success
      # We can do something really cool here,
      # something like ASCII art, for now let's just
      # log it.
      Dextery.logger.info "I am a very neat monster"
    end
  end
end