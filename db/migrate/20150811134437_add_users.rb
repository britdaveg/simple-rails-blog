class AddUsers < ActiveRecord::Migration

  def self.up

    user = User.new(:email => 'john@example.com',
                    :password => 'password',
                    :password_confirmation => 'password')

    user.save

    user = User.new(:email => 'nick@example.com',
                    :password => 'password',
                    :password_confirmation => 'password')

    user.save

  end

  def self.down
    user = User.find_by_email( 'john@example.com' )
    user.destroy if user

    user = User.find_by_email( 'nick@example.com' )
    user.destroy if user
  end

end
