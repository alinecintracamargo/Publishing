# spec/controllers/authors_controller_spec.rb

require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do
  let(:valid_attributes) {
    { name: "John Doe" }
  }

  let(:invalid_attributes) {
    { name: nil }
  }

  describe "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_successful
    end

    it "assigns all authors as @authors" do
      author = Author.create! valid_attributes
      get :index
      expect(assigns(:authors)).to eq([author])
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Author" do
        expect {
          post :create, params: { author: valid_attributes }
        }.to change(Author, :count).by(1)
      end

      it "redirects to the created author" do
        post :create, params: { author: valid_attributes }
        expect(response).to redirect_to(Author.last)
      end
    end

    context "with invalid params" do
      it "does not create a new Author" do
        expect {
          post :create, params: { author: invalid_attributes }
        }.to_not change(Author, :count)
      end

      it "renders the 'new' template" do
        post :create, params: { author: invalid_attributes }
        expect(response).to render_template("new")
      end
    end
  end

  describe "PATCH #update" do
    let(:author) { Author.create! valid_attributes }
    let(:new_attributes) {
      { name: "Jane Doe" }
    }

    context "with valid params" do
      it "updates the requested author" do
        patch :update, params: { id: author.to_param, author: new_attributes }
        author.reload
        expect(author.name).to eq("Jane Doe")
      end

      it "redirects to the author" do
        patch :update, params: { id: author.to_param, author: new_attributes }
        expect(response).to redirect_to(author)
      end
    end
  end
end
