module ApplicationHelper
    # display correct page url
    # if page slug exists, display slug
    # otherwise, display page id
    def url_for_page page
        if page.slug.present?
            page.slug
        else
            "pages/#{page.id}"
        end
    end
end
