class NotecommentsController < ApplicationController
    def create
      @mainnote = Mainnote.find(params[:mainnote_id])
      @notecomment = @mainnote.notecomments.create(notecomment_params)
      redirect_to mainnote_path(@mainnote)
    end

    def destroy
      @mainnote = Mainnote.find(params[:mainnote_id])
      @notecomment = @mainnote.notecomments.find(params[:id])
      @notecomment.destroy
      redirect_to mainnote_path(@mainnote)
    end
    private
      def notecomment_params
        params.require(:notecomment).permit(:user_id, :comment)
      end
end