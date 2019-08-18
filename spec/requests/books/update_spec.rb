# frozen_string_literal: true

require "rails_helper"

RSpec.describe "books#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/v1/books/#{book.id}", payload
  end

  describe "basic update" do
    let!(:book) { create(:book) }

    let(:payload) do
      {
        data: {
          id: book.id.to_s,
          type: "books",
          attributes: {
            title: "testing",
          },
        },
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit "updates the resource" do
      expect(BookResource).to receive(:find).and_call_original
      expect(make_request).to be_successful
      expect(book.reload.title).to eq("testing")
    end
  end
end
