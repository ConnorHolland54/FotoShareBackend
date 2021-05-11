class PostSerializer
  def initialize(post_object)
    @post = post_object
  end

  def to_serialized_json
    options = {
      include: {
        user: {
          only: [:name, :email, :id]
        },
        comments: {
          only: [:content, :user_id]
        }
      },
      except: [:updated_at, :created_at]
    }
    @post.to_json(options)
  end

end
