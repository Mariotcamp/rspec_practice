require 'rails_helper'

RSpec.describe Post, type: :model do
  it "本文がある場合にPOSTモデルが作成できる" do
    post = Post.new(
      title: "今日の目標",
      body: "アンダーを漕ぎやめない"
    )
    expect(post).to be_valid
  end

  it "タイトルがない場合に投稿が無効になる" do
    post = Post.new(
      title: nil,
      body: "死ぬほど漕げ"
    )
    post.valid?
    expect(post.errors[:title]).to include("can't be blank")
  end
end
