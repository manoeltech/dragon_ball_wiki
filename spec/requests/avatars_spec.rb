require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/avatars", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Avatar. As you add validations to Avatar, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Avatar.create! valid_attributes
      get avatars_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      avatar = Avatar.create! valid_attributes
      get avatar_url(avatar)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_avatar_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      avatar = Avatar.create! valid_attributes
      get edit_avatar_url(avatar)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Avatar" do
        expect {
          post avatars_url, params: { avatar: valid_attributes }
        }.to change(Avatar, :count).by(1)
      end

      it "redirects to the created avatar" do
        post avatars_url, params: { avatar: valid_attributes }
        expect(response).to redirect_to(avatar_url(Avatar.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Avatar" do
        expect {
          post avatars_url, params: { avatar: invalid_attributes }
        }.to change(Avatar, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post avatars_url, params: { avatar: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested avatar" do
        avatar = Avatar.create! valid_attributes
        patch avatar_url(avatar), params: { avatar: new_attributes }
        avatar.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the avatar" do
        avatar = Avatar.create! valid_attributes
        patch avatar_url(avatar), params: { avatar: new_attributes }
        avatar.reload
        expect(response).to redirect_to(avatar_url(avatar))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        avatar = Avatar.create! valid_attributes
        patch avatar_url(avatar), params: { avatar: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested avatar" do
      avatar = Avatar.create! valid_attributes
      expect {
        delete avatar_url(avatar)
      }.to change(Avatar, :count).by(-1)
    end

    it "redirects to the avatars list" do
      avatar = Avatar.create! valid_attributes
      delete avatar_url(avatar)
      expect(response).to redirect_to(avatars_url)
    end
  end
end
