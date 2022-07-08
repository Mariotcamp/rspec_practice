require 'rails_helper'

RSpec.describe Post, type: :model do
  it "本文とタイトルがある場合にPOSTモデルが作成できる" do
    post = FactoryBot.create(:post, :a)
    expect(post).to be_valid
  end

  it "タイトルがない場合に投稿が無効になる" do
    post = Post.create(
      title: nil,
      body: "頑張ろう"
    )
    post.valid?
    expect(post.errors[:title]).to include("can't be blank")
  end

  it "Factory Botのテスト" do
    post = FactoryBot.create(:post, :a)
    expect(post).to be_valid
  end
end
