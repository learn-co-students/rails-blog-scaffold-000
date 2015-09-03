class PostsControllersController < ApplicationController
  before_action :set_posts_controller, only: [:show, :edit, :update, :destroy]

  # GET /posts_controllers
  # GET /posts_controllers.json
  def index
    @posts_controllers = PostsController.all
  end

  # GET /posts_controllers/1
  # GET /posts_controllers/1.json
  def show
  end

  # GET /posts_controllers/new
  def new
    @posts_controller = PostsController.new
  end

  # GET /posts_controllers/1/edit
  def edit
  end

  # POST /posts_controllers
  # POST /posts_controllers.json
  def create
    @posts_controller = PostsController.new(posts_controller_params)

    respond_to do |format|
      if @posts_controller.save
        format.html { redirect_to @posts_controller, notice: 'Posts controller was successfully created.' }
        format.json { render :show, status: :created, location: @posts_controller }
      else
        format.html { render :new }
        format.json { render json: @posts_controller.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts_controllers/1
  # PATCH/PUT /posts_controllers/1.json
  def update
    respond_to do |format|
      if @posts_controller.update(posts_controller_params)
        format.html { redirect_to @posts_controller, notice: 'Posts controller was successfully updated.' }
        format.json { render :show, status: :ok, location: @posts_controller }
      else
        format.html { render :edit }
        format.json { render json: @posts_controller.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts_controllers/1
  # DELETE /posts_controllers/1.json
  def destroy
    @posts_controller.destroy
    respond_to do |format|
      format.html { redirect_to posts_controllers_url, notice: 'Posts controller was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_posts_controller
      @posts_controller = PostsController.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def posts_controller_params
      params.require(:posts_controller).permit(:title)
    end
end
