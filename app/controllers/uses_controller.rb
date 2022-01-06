class UsesController < ApplicationController
    def create
        @use = current_user.uses.create(mainnote_id: params[:mainnote_id])
        redirect_back(fallback_location: root_path)
      end
    
      def destroy
        @use= Use.find_by(mainnote_id: params[:mainnote_id], user_id: current_user.id)
        @use.destroy
        redirect_back(fallback_location: root_path)
      end
end
