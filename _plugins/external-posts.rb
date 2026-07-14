require 'feedjira'
require 'httparty'
require 'jekyll'

module ExternalPosts
  class ExternalPostsGenerator < Jekyll::Generator
    safe true
    priority :high

    def generate(site)
      if site.config['external_sources'] != nil
        site.config['external_sources'].each do |src|
          p "Fetching external posts from #{src['name']}:"
          xml = HTTParty.get(src['rss_url']).body
          feed = Feedjira.parse(xml)
          feed.entries.each do |e|
            p "...fetching #{e.url}"
            slug = e.title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
            path = site.in_source_dir("_posts/#{slug}.md")
            haystack = [e.title, e.summary, e.content, e.url].compact.join(' ').downcase
            source_tags = Array(src['tags'])
            feed_tags = e.respond_to?(:categories) && e.categories ? Array(e.categories).map(&:to_s) : []
            rule_tags = Array(src['tag_rules']).flat_map do |rule|
              keyword = rule['keyword'].to_s.downcase
              keyword.empty? || !haystack.include?(keyword) ? [] : Array(rule['tags'])
            end

            doc = Jekyll::Document.new(
              path, { :site => site, :collection => site.collections['posts'] }
            )
            doc.data['external_source'] = src['name'];
            doc.data['feed_content'] = e.content;
            doc.data['title'] = "#{e.title}";
            doc.data['description'] = e.summary;
            doc.data['date'] = e.published;
            doc.data['redirect'] = e.url;
            doc.data['tags'] = (source_tags + feed_tags + rule_tags).compact.map(&:to_s).reject(&:empty?).uniq;
            doc.data['categories'] = Array(src['categories']).compact.map(&:to_s).reject(&:empty?).uniq;
            site.collections['posts'].docs << doc
          end
        end
      end
    end
  end

end
