class UserType < ActiveHash::Base
  include ActiveHash::Associations

  belongs_to :user

  self.data = [
    # 洋服のサイズ
    { id: 1, value: '一般ユーザー'},
    { id: 2, value: '農家の方'},
    { id: 3, value: '飲食店'},

    # 必須項目のため空のバリューを用意
    { id: 99, value: '', group: '' }
  ]
end