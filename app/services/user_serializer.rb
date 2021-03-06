class UserSerializer

  def initialize(user)
    @user = user
  end

  def to_serialized_json
    options = {
      user: {
        only: [:id, :email]
      },
      except: [:created_at, :updated_at]
    }
    @user.to_json(options)
  end

end
