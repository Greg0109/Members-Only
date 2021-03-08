# rubocop:disable Style/GuardClause

module StoriesHelper
  def display_name(user)
    user.username = if user_signed_in?
                      user.username
                    else
                      'Anonymous'
                    end
  end

  def display_button(user, story)
    if user_signed_in? && (current_user.username = user.username)
      link_to 'Delete', story, method: :delete, data: { confirm: 'Are you sure?' },
                               class: 'btn btn-danger p-1 text-white'
    end
  end

  def display_new_story_button
    link_to 'New story', new_story_path, class: 'btn bg-dark px-5 py-0 text-white' if user_signed_in?
  end
end

# rubocop:enable Style/GuardClause
