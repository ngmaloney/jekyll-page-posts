module PagePosts
  class Generator < Jekyll::Generator

    def generate(site)
      site.pages.each do |page|
        PagePostGenerator.generate!(page, site)
      end
    end

    class PagePostGenerator
      attr_accessor :page, :site

      def self.generate!(page, site)
        self.new(page, site).add_posts
      end

      def initialize(page, site)
        @page = page
        @site = site
        page.data['posts'] = []
      end

      def add_posts
        Dir.glob("./#{posts_dir}/*").each do |filename|
          page.data['posts'] << build_post(filename)
        end
      end

      private

      def basename
        page.name.split(".").first
      end

      def posts_dir
        "_" + basename
      end

      def build_post(filename)
        Jekyll::Page.new(site, site.source, "/", filename)
      end
    end
  end
end
