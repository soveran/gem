module Plan
  class Gem
    def name
      "foo"
    end

    def version
      "0.0.1"
    end

    def summary
      "Summary of my gem"
    end

    def description
      "Description of my gem"
    end

    def authors
      ["My Name"]
    end

    def email
      ["my_name@example.com"]
    end

    def homepage
      "http://example.com/"
    end

    def license
      "MIT"
    end

    def destination
      "#{name}.gemspec"
    end
  end

  class License < Gem
    def destination
      "LICENSE"
    end
  end

  class Readme < Gem
    def destination
      "README"
    end
  end

  class Lib < Gem
    def destination
      "lib/#{name}.rb"
    end
  end

  class Bin < Gem
    def destination
      "bin/#{name}"
    end
  end

  class Test < Gem
    def destination
      "test/#{name}_test.rb"
    end
  end
end
