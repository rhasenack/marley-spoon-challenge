require 'contentful'

class RecipeRetriever
  def initialize()
    @client = Contentful::Client.new(
      space: ENV['CONTENTFUL_SPACE_ID'],
      access_token: ENV['CONTENTFUL_ACCESS_TOKEN'],
      environment: 'master',  # Optional - defaults to 'master'.
      dynamic_entries: :auto  # Enables Content Type caching.
    )
  end

  def recipes
    entries = get_content('recipe')
    return entries.items
  end

  private

  def get_content(content_type)
    @client.entries(content_type: content_type)
  end
end
