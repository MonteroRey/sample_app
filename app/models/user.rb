class User < ApplicationRecord
    ######################## validation for user test helper #########################
    validates :name, presence: true

    ########### validation for email ################
    #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.(com|net|org)+\z/i
    validates :email, presence: true ,length: {maximum: 255} , format:{with: VALID_EMAIL_REGEX } ,
    uniqueness: true
    ##############################################################################
end
