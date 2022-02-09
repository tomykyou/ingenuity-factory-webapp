class MainnoteController < ApplicationController
  before_action :authenticate_user!, except: [:top,:about]
  def top
    @q = Mainnote.ransack(params[:q])
    @mainnote = @q.result(distinct: true).page(params[:page]).per(12)
  end

  def show
    @mainnote = Mainnote.find(params[:id])
    @user_mainnote= User.where(id: @mainnote.user_id)
    @notecomment = Notecomment.where(mainnote_id: @mainnote.id)
    @like = Like.new
    @use = Use.new
  end

  def new
    @mainnote = Mainnote.new
  end
  
  def create
    @mainnote = Mainnote.new(mainnote_params)

    if @mainnote.save
      redirect_to @mainnote
    else
      render :new
    end
  end

  def edit
    @mainnote = Mainnote.find(params[:id])
    unless @mainnote.user_id == current_user.id
      redirect_to  @mainnote
    end
  end

  def update
    @mainnote = Mainnote.find(params[:id])
    if params[:delete_image1]
         @mainnote.image1 = nil
         @mainnote.save!
         render :action => 'edit'
         return
    end
    if params[:delete_image2]
         @mainnote.image2 = nil
         @mainnote.save!
         render :action => 'edit'
         return
    end
    if params[:delete_image3]
         @mainnote.image3 = nil
         @mainnote.save!
         render :action => 'edit'
         return
    end
    if @mainnote.update(mainnote_params)
      redirect_to @mainnote
    else
      render :edit
    end  
  end


  def destroy
    @mainnote = Mainnote.find(params[:id])
    if @mainnote.user_id != current_user.id
      redirect_to  @mainnote
    else
      @mainnote.destroy
      redirect_to root_path
    end
  end

  def about

  end

  def usershow
    @user = User.all
  end

  def mypage
    @mainnote = Mainnote.where(user_id: current_user.id)
    @notecomment = Notecomment.where(mainnote_id: @mainnote.ids)
  end

  def userpg
      @user = User.find(params[:id])
      @mainnote = Mainnote.where(user_id: @user.id)
      @notecomment = Notecomment.where(mainnote_id: @mainnote.ids)
  end
  
  private
    def mainnote_params
      params.require(:mainnote).permit(:user_id, :text, :title, :image1, :image2, :image3, :category, :target, :thingstoprepare)
    end


end
