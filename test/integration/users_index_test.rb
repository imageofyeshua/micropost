require "test_helper"

class UsersIndexTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)

    30.times do
      User.create!(name: Faker::Name.name, email: Faker::Internet.email, password: "password")
    end
  end

  test "index includes pagination and user links" do
    log_in_as(@user)
    get users_path
    assert_template 'users/index'
    assert_select 'div.flickr_pagination', true

    User.paginate(page: 1, per_page: 10).each do |user|
      assert_select 'a[href=?]', user_path(user), text: user.name
    end
  end
end
