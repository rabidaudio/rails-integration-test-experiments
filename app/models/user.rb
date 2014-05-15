class User < ActiveRecord::Base

    def initalize (name)
        @name = name
    end

    def name
        "bertrand russell"
    end
end
