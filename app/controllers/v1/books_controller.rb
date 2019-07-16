# frozen_string_literal: true

module V1
  class BooksController < ApplicationController
    def index
      books = BookResource.all(params)
      respond_with(books)
    end

    def show
      book = BookResource.find(params)
      respond_with(book)
    end

    def create
      book = BookResource.build(params)

      if book.save
        render jsonapi: book, status: 201
      else
        render jsonapi_errors: book
      end
    end

    def update
      book = BookResource.find(params)

      if book.update_attributes
        render jsonapi: book
      else
        render jsonapi_errors: book
      end
    end

    def destroy
      book = BookResource.find(params)

      if book.destroy
        render jsonapi: {meta: {}}, status: 200
      else
        render jsonapi_errors: book
      end
    end
  end
end
