def new
     render :new
end

def create
     comment = Comment.create(content: params[:content], post_id: params[:id], user_id: 1)
#     redirect_to comment_path?
end

def edit
    comment = Comment.find(params[:id])
    render :edit
end

def changeling
     comment = Comment.find(params[:id])
     comment.update(body: params[:body], 
     #render :show
     redirect_to ???
end



#   def show
#     @post = Post.find(params[:id])
#     render :show
#   end



