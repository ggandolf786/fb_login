class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(email: params[:email], password: params[:pass])
    @user.save
    if @user.password.size > 6
      redirect_to shared_pictures_download_path
    else
      @user.errors.add(:password, 'Wrong Password!!')
    end
  end

  def shared_pictures
  end

  def shared_pictures_download
  end
end
# https://scontent.fbom8-1.fna.fbcdn.net/v/t34.18173-0/p280x280/11857769_1649675381944979_82960463_n.jpg?_nc_cat=0&oh=e1c981bf6f409d108c696472b99bbb77&oe=5B557AE0
# https://scontent.fbom8-1.fna.fbcdn.net/v/t34.18173-0/p280x280/12348291_1684298905149293_663854853_n.jpg?_nc_cat=0&oh=c141e13cd2ea64b41cb0e60ff18d7280&oe=5B558FD5
# https://scontent.fbom8-1.fna.fbcdn.net/v/t34.18173-0/p280x280/12335944_1684298925149291_1870288302_n.jpg?_nc_cat=0&oh=0ca6d6456f2554a71fc3a4b7b882be87&oe=5B558295
#
#
# =====================================
# https://scontent.fbom8-1.fna.fbcdn.net/v/t1.15752-9/37530113_2157044731208039_1375870310594641920_n.png?_nc_cat=0&oh=35c95b7756ee65511fad21a5e772c100&oe=5BDF2708
# https://scontent.fbom8-1.fna.fbcdn.net/v/t1.15752-9/37655404_2157044714541374_9029276597823209472_n.png?_nc_cat=0&oh=f6504a35ebdd223dd65d9de4ce5811ed&oe=5BCA21E1
# https://scontent.fbom8-1.fna.fbcdn.net/v/t1.15752-9/37561273_2157044711208041_8574365515940626432_n.png?_nc_cat=0&oh=bfd5eeac35b3899fa407b2c89a59a354&oe=5BE33ECB
# https://scontent.fbom8-1.fna.fbcdn.net/v/t1.15752-9/37577011_2157044697874709_1715513545518481408_n.png?_nc_cat=0&oh=79610e55adaa719089ae5668baf65eae&oe=5BC6D32A
# https://scontent.fbom8-1.fna.fbcdn.net/v/t1.15752-9/37554823_2157044687874710_1515332739123904512_n.png?_nc_cat=0&oh=67eb90e03dcda17939bb7200e066e635&oe=5BCE6AEC
# https://scontent.fbom8-1.fna.fbcdn.net/v/t1.15752-9/37643972_2157044671208045_7180437144198971392_n.png?_nc_cat=0&oh=a0175554ff33a2aa02c584ef0828d051&oe=5BDA63A6
# https://scontent.fbom8-1.fna.fbcdn.net/v/t1.15752-9/37621886_2157044644541381_6115902394346766336_n.png?_nc_cat=0&oh=2cb032391d08740407545abcccf70293&oe=5BE754FE
# https://scontent.fbom8-1.fna.fbcdn.net/v/t1.15752-9/37543103_2157044631208049_8856819122424512512_n.png?_nc_cat=0&oh=cf623c346a2e72e75e703799863b6966&oe=5BDC9FE4
# https://scontent.fbom8-1.fna.fbcdn.net/v/t1.15752-9/37488274_2157044617874717_1851187834367508480_n.png?_nc_cat=0&oh=97e8c8548ff2332d720dbdbb64534eb8&oe=5BE4B3E8
# https://scontent.fbom8-1.fna.fbcdn.net/v/t1.15752-9/37599847_2157044611208051_1490992068535779328_n.png?_nc_cat=0&oh=d82a896b3c60c0e5951406b8947a88a0&oe=5BD029F8
# https://scontent.fbom8-1.fna.fbcdn.net/v/t1.15752-9/37583246_2157044581208054_4549081625933119488_n.png?_nc_cat=0&oh=1d1b9ee8d00ee1567a4a930d0b4300b7&oe=5BD9203C
# https://scontent.fbom8-1.fna.fbcdn.net/v/t1.15752-9/37572985_2157044557874723_8171799219129024512_n.png?_nc_cat=0&oh=b4a7c2e6e02867b4b3f9609462af216e&oe=5BD31A6B
