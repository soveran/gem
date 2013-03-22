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
      "#{name}/#{name}.gemspec"
    end
  end

  class License < Gem
    def destination
      "#{name}/LICENSE"
    end
  end

  class Readme < Gem
    def destination
      "#{name}/README"
    end
  end

  class Lib < Gem
    def destination
      "#{name}/lib/#{name}.rb"
    end
  end

  class Bin < Gem
    def destination
      "#{name}/bin/#{name}"
    end
  end

  class Test < Gem
    def destination
      "#{name}/test/#{name}_test.rb"
    end
  end
end
