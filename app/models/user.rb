class User < ActiveRecord::Base
    validates :username, presence: true,
        uniqueness: { case_sensitive: false },
        format:     { with: /\A[a-zA-Z0-9]+\z/, message: "only allows letters and numbers" },
        length:     { minimum: 3 }

    has_secure_password

    validates :password, length: { minimum: 6, maximum: 50 }

end
