class HomesController < ActionController::Base
  def index
    @user = User.all
  end
  def new
    @user = User.new
  end
  def create
    # debugger
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end
  
  private
  def user_params
    params.permit(:username, :password, :age)
  end
end