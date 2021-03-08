# rubocop:disable Layout/EndOfLine

module StoriesHelper
    def display_name(user)
        if user_signed_in?
            user.username = user.username
        else
            user.username = "Anonymous"
        end
    end

    def display_button(user,story)
        if user_signed_in?
            if current_user.username = user.username
                link_to 'Delete', story, method: :delete, data: { confirm: 'Are you sure?' }, class: 'btn btn-danger p-1 text-white'
            end
        end
    end

    def display_new_story_button
        if user_signed_in?
            link_to 'New story', new_story_path, class: 'btn bg-dark px-5 py-0 text-white'
        end
    end
end

# rubocop:enable Layout/EndOfLine
