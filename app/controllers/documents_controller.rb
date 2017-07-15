class DocumentsController < ApplicationController
  def index
  	userId = params[:user_id]
  	@user = User.find(userId)

  end

  def new
  	userId = params[:user_id]
    @user = User.find(userId)
    @document = Document.new(:user => @user)
  end

  def create
  	userId = params[:user_id]
  	@user = User.find(userId)
  	@documents = Document.new(document_params)
  	@documents.user = @user

  	if @documents.save
  		redirect_to user_documents_path
  	else
  		render :new
  end
end

private
def document_params
	#params.require(:document).permit()
end
end