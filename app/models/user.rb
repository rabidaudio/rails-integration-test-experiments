class User < ActiveRecord::Base
    validates :username, presence: true,
        uniqueness: { case_sensitive: false },
        format:     { with: /\A[a-zA-Z]+\z/, message: "only allows letters" },
        length:     { minimum: 3 }

    has_secure_password
    
end
