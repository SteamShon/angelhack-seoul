class ThemesController < ApplicationController
  # GET /themes
  # GET /themes.json
  def index
    @themes = Theme.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @themes }
    end
  end

  # GET /themes/1
  # GET /themes/1.json
  def show
    @user_themes = Theme.find_all_by_user_id(params[:id],:order => 'created_at')
    @user_themes_feelings = Post.find_all_by_theme_id(params[:id])
    @data = {}
    @user_themes_feelings.each_with_index do |post, idx|
      if @data.has_key?(post.emotion_id) == false
        @data[post.emotion_id] = []
      end
      @data[post.emotion_id] << [idx, post.emotion_id, 50]
    end
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @theme }
      format.js { }#render json: @user_themes_feeling }
    end

  end

  # GET /themes/new
  # GET /themes/new.json
  def new
    @theme = Theme.new

    respond_to do |format|
      format.html # new.html.erb
      #format.json { render json: @theme }
    end
  end

  # GET /themes/1/edit
  def edit
    @theme = Theme.find(params[:id])
  end

  # POST /themes
  # POST /themes.json
  def create
    @theme = Theme.new(params[:theme])

    respond_to do |format|
      if @theme.save
        format.html { redirect_to @theme, notice: 'Theme was successfully created.' }
        format.json { render json: @theme, status: :created, location: @theme }
      else
        format.html { render action: "new" }
        format.json { render json: @theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /themes/1
  # PUT /themes/1.json
  def update
    @theme = Theme.find(params[:id])

    respond_to do |format|
      if @theme.update_attributes(params[:theme])
        format.html { redirect_to @theme, notice: 'Theme was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /themes/1
  # DELETE /themes/1.json
  def destroy
    @theme = Theme.find(params[:id])
    @theme.destroy

    respond_to do |format|
      format.html { redirect_to themes_url }
      format.json { head :no_content }
    end
  end
end
