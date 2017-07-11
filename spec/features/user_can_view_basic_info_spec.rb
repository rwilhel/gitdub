#View basic information about my account (profile pic, number of starred repos, followers, following)
require 'rails_helper'

RSpec.describe "An authorized user can view basic account info" do
  scenario "An authorized user can view their basic account info" do
    VCR.use_cassette("user_can_see_account_info") do
      stub_omniauth
      visit dashboard_path

      expect(current_path).to eq("/dashboard")
      expect(page).to have_selector(".user_nickname")
      expect(page).to have_selector(".user_name")
      expect(page).to have_selector(".user_image")
      expect(page).to have_selector(".user_repos")
      expect(page).to have_selector(".user_followers")
      expect(page).to have_selector(".user_following")
    end
  end
end

# def stub_omniauth
#   OmniAuth.config.test_mode = true
#   OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new({
#     provider: 'github',
#     uid: '12345',
#     info: {
#           name: 'Toby',
#           email: 'test@email.com',
#           nickname: 'tobygit',
#           avatar_url: 'something.png'
#         },
#     credentials: {
#       token: '3232322321cdd2'
#     }
#   })
# end

def stub_omniauth
  OmniAuth.config.test_mode = true
  OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new({
    'provider' => 'github',
    'uid' => '12345',
    'info'=> {
          'name' => 'Toby',
          'email' => 'test@email.com',
          'nickname' => 'tobygit',
          'avatar_url'=> 'something.png'
        },
    'credentials' => {
      'token' => '3232322321cdd2'
    }
  })
end
