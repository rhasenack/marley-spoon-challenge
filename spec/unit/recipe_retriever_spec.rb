require 'rails_helper'

RSpec.describe 'The Recipe Retriever Service' do
  let(:client) { RecipeRetriever.new }

  it 'should successfully return an array of Contentful Entries' do
    expect(client.recipes.class).to be(Array)
    expect(client.recipes.first.class).to be(Contentful::Entry)
  end

  it 'should return a recipe when given a correct id' do
    id = client.recipes.first.id
    expect(client.recipe(id).class).to be(Contentful::Entry)
  end

  it 'should return nil when given an unexistent recipe id' do
    id = 'invalid'
    expect(client.recipe(id)).to be(nil)
  end

  it 'should return an error when not given an ID' do
    expect { client.recipe }.to raise_error(ArgumentError)
  end
end
