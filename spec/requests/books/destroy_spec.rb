# frozen_string_literal: true

require "rails_helper"

RSpec.describe "books#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/v1/books/#{book.id}"
  end

  describe "basic destroy" do
    let!(:book) { create(:book) }

    it "updates the resource" do
      expect(BookResource).to receive(:find).and_call_original
      expect {
        make_request
        expect(response.status).to eq(200), response.body
      }.to change { Book.count }.by(-1)
      expect { book.reload }
        .to raise_error(ActiveRecord::RecordNotFound)
      expect(json).to eq("meta" => {})
    end
  end
end
