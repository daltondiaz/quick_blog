class Post < ActiveRecord::Base

    # attr_accessible :body, :title <-- Rails 4+ attr_accessible is not avaliable.
    # So its necessary use Strong Parameters.
    # Strong Parameters its explain in this tutorial:
    # http://edgeguides.rubyonrails.org/action_controller_overview.html#strong-parameters
    # or https://github.com/rails/strong_parameters
    # Go to the posts_controller.rb and find to the comment Strong Parameters

    #every post must have a body and title
    validates_presence_of :body, :title
end
