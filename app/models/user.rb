class User < ActiveRecord::Base
  TEMP_EMAIL_PREFIX = 'change@me'

  FIELDS = {
    facebook: {
      name:  [:extra, :raw_info, :name],
      image: [:info, :image]
    }
  }

  has_many :ideas
  has_many :identities
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  acts_as_voter

  validates :first_name,
     presence: true,
     length: { in: 2..20},
     format: { with: /\A[a-zA-Z]+\z/, message: "First name should only contain letters" }
  validates :last_name,
     presence: true,
     length: { in: 2..50},
     format: { with: /\A[a-zA-Z]+\z/, message: "Last name should only contain letters" }
  validates :dob,
     presence: true
  validates :role,
     presence: true,
     inclusion: { in: %w(admin user), message: "you have not chosen a valid role" }
  validates :gender,
     presence: true,
     length: { is: 1},
     inclusion: { in: %w(m f), message: "you have not chosen a valid gender" }
  validates :nationality,
     length: { in: 2..30 }
  validates :location,
     presence: true,
     length: { in: 2..30 }

  def self.find_for_oauth(auth, signed_in_resource = nil)
    
    # Get the identity and user if they exist
    identity = Identity.find_for_oauth(auth)
    user = signed_in_resource ? signed_in_resource : identity.user

    # Create the user if needed
    user = self.create_user(auth) if user.nil?

    # Associate the identity with the user if needed
    if identity.user != user
      identity.user = user
      identity.save!
    end

    # Return the user at the end of the method
    user 

  end

  private
    def self.create_user(auth)
      # Get the existing user by email if the provider gives us a verified email.
      # If no verified email was provided we assign a temporary email and ask the user to verify it on the next step via UsersController.finish_signup
      email_is_verified = auth.info.email && (auth.info.verified || auth.info.verified_email)
      email = auth.info.email if email_is_verified

      # Select a user if they have already registered
      user = User.where(email: email).first if email

      # Create the user if it's a new registration
      if user.nil?
        user = User.new

          # Generic for each provider
          FIELDS.try(:[], auth.try(:[], :provider).to_sym).each do |key, array|
            a = auth
            array.each do |method|
              a = a.try(:[], method)
            end
            user[key] = a if user[key].nil?
          end

        # If you use confirmable module 
        # user.skip_confirmation!
        user.save!
      end
      
      # Set user email and password
      
      user.email = email ? email : "#{TEMP_EMAIL_PREFIX}-#{auth.uid}-#{auth.provider}.com"
      user.password = Devise.friendly_token[0,20]

      # If you use confirmable module 
      # user.skip_confirmation!

      # Save the user
      user.save!

      # Return the user
      user

    end
end

