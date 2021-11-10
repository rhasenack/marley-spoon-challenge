# frozen_string_literal: true

# Service to retrieve data for recipes from Contentful API
class RecipeRetriever
  def initialize
    @client = Contentful::Client.new(
      space: ENV['CONTENTFUL_SPACE_ID'],
      access_token: ENV['CONTENTFUL_ACCESS_TOKEN'],
      environment: 'master', # Optional - defaults to 'master'.
      dynamic_entries: :auto,  # Enables Content Type caching.
      raise_for_empty_fields: false
    )
  end

  def recipes
    get_content('recipe').items
  end

  def recipe(id)
    get_recipe(id)

  end

  private

  def get_content(content_type)
    @client.entries(content_type: content_type)
  end

  def get_recipe(id)
    @client.entries('sys.id' => id).first
  end
end
