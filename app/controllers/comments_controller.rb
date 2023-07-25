class CommentsController < ApplicationController

    before_action :set_comment, only: %i[ show edit update destroy ]

    # GET /comments/new
    def new
      @comment = Comment.new
    end

    # POST /comments or /comments.json
    def create
      @single=Single.find(params[:single_id])
      @comment = @single.comments.new(comment_params)
  
      respond_to do |format|
        if @comment.save
          format.html { redirect_to chat_url(@single), notice: "Comment was successfully created." }
          format.json { render :show, status: :created, location: @comment }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @comment.errors, status: :unprocessable_entity }
        end
      end
    end
  
    IMID
    # PATCH/PUT /comments/1 or /comments/1.json
    def update
      respond_to do |format|
        if @comment.update(comment_params)
          format.html { redirect_to comment_url(@comment), notice: "Comment was successfully updated." }
          format.json { render :show, status: :ok, location: @comment }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @comment.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /comments/1 or /comments/1.json
    def destroy
      @comment.destroy
  
      respond_to do |format|
        format.html { redirect_to comments_url, notice: "Comment was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_comment
        @comment = Comment.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def comment_params
        params.require(:comment).permit(:body, :single_id)
      end
end
