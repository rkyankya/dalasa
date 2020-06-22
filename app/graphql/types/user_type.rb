module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :title, String, null: false
    field :avatar_url, String, null: true

    def avatar_url
      if object.avatar.attached?
        Rails.application.routes.url_helpers.rails_representation_path(object.avatar_variant(:thumb), only_path: true)
      end
    end

    def title
      object.full_title
    end
  end
end
