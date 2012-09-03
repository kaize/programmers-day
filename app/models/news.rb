class News < ActiveRecord::Base
  include UsefullScopes

  attr_accessible :body, :image, :name, :published_at, :state, :state_event

  scope :published, where(state: :published)

  validates :name, presence: true
  validates :published_at, presence: true

  mount_uploader :image, NewsImageUploader

  state_machine :state, initial: :new do
    state :new
    state :published
    state :hidden

    event :publish do
      transition any - [:published] => :published
    end

    event :unpublish do
      transition published: :hidden
    end
  end

  def to_s
    name
  end

end
