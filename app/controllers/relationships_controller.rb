class RelationshipsController < ApplicationController
  before_action :set_relationship, only: [:show, :edit, :update, :destroy]
  before_action :set_user

  # GET /relationships
  # GET /relationships.json
  def index
    @relationships = Relationship.all
  end

  # GET /relationships/1
  # GET /relationships/1.json
  def show
  end

  # GET /relationships/new
  def new
    @relationship = Relationship.new
    members = []
    User.all.each { |user, id| members << ["#{user.first_name} #{user.last_name}", user.id] }
    @members = members - [["#{@user.first_name} #{@user.last_name}", @user.id]]
  end

  # GET /relationships/1/edit
  def edit
  end

  # POST /relationships
  # POST /relationships.json
  def create
    @relationship = Relationship.new(relationship_params)

    respond_to do |format|
      if @relationship.save
        format.html { redirect_to @user, notice: 'Relationship was successfully created.' }
        format.json { render :show, status: :created, location: @relationship }
      else
        format.html { render :new }
        format.json { render json: @relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relationships/1
  # PATCH/PUT /relationships/1.json
  def update
    respond_to do |format|
      if @relationship.update(relationship_params)
        format.html { redirect_to @relationship, notice: 'Relationship was successfully updated.' }
        format.json { render :show, status: :ok, location: @relationship }
      else
        format.html { render :edit }
        format.json { render json: @relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relationships/1
  # DELETE /relationships/1.json
  def destroy
    @relationship.destroy
    respond_to do |format|
      format.html { redirect_to relationships_url, notice: 'Relationship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relationship
      @relationship = Relationship.find(params[:id])
    end

    def set_user
      id = request.url[/#{"users/"}(.*?)#{"/relationships"}/m, 1]
      @user = User.find(id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relationship_params
      params.require(:relationship).permit(Relationship.columns.map {|c| c.name})
    end
end
