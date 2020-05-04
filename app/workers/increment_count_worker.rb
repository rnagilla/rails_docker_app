class IncrementCountWorker
  include Sidekiq::Worker

  def perform(post_id)
    post = Post.find(post_id)

    post.like_count ||= 0
    post.like_count += 1
    post.save
  end
end
