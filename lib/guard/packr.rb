require 'guard'
require 'guard/guard'

require 'packr'

module Guard
  class Packr < Guard
    def initialize(watchers = [], options = {})
      super
      @options = options
      @options[:extension] ||= '.packed.js'
    end

    def start
       UI.info "Guard::Packr is running."
    end

    def run_all
      true
    end

    def run_on_change(paths)
      paths.each do |filepath|
        packed = Packr.pack(File.read(filepath), @options.slice(:shrink_vars, :private, :base62, :protect))

        new_filepath = [File.basename(filepath, '.js'), @options[:extension]].join
        File.open(new_filepath, 'wb') { |f| f.write(packed) }

        UI.info "[Guard::Packr]: Compressed/obfuscated file: #{filepath}"
      end
    end
  end
end
