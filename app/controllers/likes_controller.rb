class LikesController < ApplicationController
    def create
        @like = current_user.likes.create(mainnote_id: params[:mainnote_id])
        redirect_back(fallback_location: root_path)
      end
    
      def destroy
        @like = Like.find_by(mainnote_id: params[:mainnote_id], user_id: current_user.id)
        @like.destroy
        redirect_back(fallback_location: root_path)
      end
end
