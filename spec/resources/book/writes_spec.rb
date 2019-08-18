# frozen_string_literal: true

require "rails_helper"

RSpec.describe BookResource, type: :resource do
  describe "creating" do
    let(:payload) do
      {
        data: {
          type: "books",
          attributes: attributes_for(:book),
        },
      }
    end

    let(:instance) do
      BookResource.build(payload)
    end

    it "works" do
      expect {
        expect(instance.save).to eq(true), instance.errors.full_messages.to_sentence
      }.to change { Book.count }.by(1)
    end
  end

  describe "updating" do
    let!(:book) { create(:book) }

    let(:payload) do
      {
        data: {
          id: book.id.to_s,
          type: "books",
          attributes: {
            "title": "Robinhood",
          },
        },
      }
    end

    let(:instance) do
      BookResource.find(payload)
    end

    it "works" do
      expect(instance.update_attributes).to eq(true)
      expect(book.reload.title).to eq("Robinhood")
    end
  end

  describe "destroying" do
    let!(:book) { create(:book) }

    let(:instance) do
      BookResource.find(id: book.id)
    end

    it "works" do
      expect(instance.destroy).to eq(true)
      expect { book.reload }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end
end
