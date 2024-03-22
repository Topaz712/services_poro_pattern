module UserService
  module Base
    def self.create_user(params)
      user = User.new(params)
      if user.save
        user
      else
        user.errors
      end
    end
  end
end