class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def twitter
    omniauth = request.env['omniauth.auth']
    @authentication = Authentication.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
    if @authentication
      logger.info("##### have authentication")
      #sign_in_and_redirect @user, :event => :authentication
      sign_in(:user, @authentication.user)
      logger.info("##### abc")
#      set_token_to_session(current_user)
      logger.info("##### ccc")
      redirect_to root_url

    #elsif current_user          # 既にログインしてるけど、facebookとかの権限も追加するとき
    #  current_user.authentications.create!(:provider => omniauth['provider'], :uid => omniauth['uid'],
    #                                       :oauth_token => omniauth['credentials']['token'],
    #                                       :oauth_token_secret => omniauth['credentials']['secret'])
    #  redirect_to authentications_url
    else                        # 新規ユーザのとき
      logger.info("##### don't have authentication")
      data = omniauth['extra']['user_hash']
      @user = User.new
      @user.authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'],
                                  :access_token => omniauth['credentials']['token'],
                                  :access_secret => omniauth['credentials']['secret'],
                                  :screen_name => data['screen_name'],
                                  :bio => data['description'],
                                  :image_url => data['profile_image_url'],
                                  :web_url => data['url'],
                                  :last_tid => nil) # data['id']で取れるけど初期値はnil
      @user.name = data['screen_name']
      @user.image = data['profile_image_url']
      @user.save!(validate: false)

      sign_in(:user, @user)
      redirect_to root_url
    end
  end

end