class Contact < ActiveRecord::Base
    validates :name, presence: true, length: { maximum: 50, minimum: 3 }
    
    validates :message, presence:true, length: { maximum: 300, minimum: 3 }

end
