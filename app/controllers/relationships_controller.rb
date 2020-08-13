class RelationshipsController < ApplicationController
    before_action :authenticate_user!
    #create a relationship between current user and book 
    #ie - checkout a book
    def create
        current_user.relationships.create(book_id: params[:book_id])
        redirect_to Book.find(params[:book_id])
    end
    #destroy relationship between current user and book 
    #ie- return a book
    def destroy
        book = Relationship.find(params[:id]).book
        Relationship.find(params[:id]).delete
        redirect_to books_path
    end
end
