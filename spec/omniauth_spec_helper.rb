# module OmniAuthSpecHelper
#   def auth_mock
#     OmniAuth.config.test_mode = true
#     OmniAuth.conifg.mock_auth[:github] = OmniAuth::AuthHash.new({
#       provider: 'github',
#       uid: '12345',
#       info: {
#             name: 'Toby'
#             email: 'test@email.com'
#             nickname: 'tobygit',
#             image: 'something.png'
#           },
#       credentials: {
#         token: '3232322321cdd2'
#       }
#     })
#   end
# end
#
# module
