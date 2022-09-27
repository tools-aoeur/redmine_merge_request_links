Redmine::Plugin.register :redmine_merge_request_links do
  name 'Redmine Merge Request Links'
  author 'Tim Fischbach (orig)'
  description 'Display links to Gitlab merge requests and Gitea/GitHub pull requests'
  version '2.2.1'
  url 'https://github.com/tf/redmine_merge_request_links'
  author_url 'https://github.com/tf'

  requires_redmine version_or_higher: '3.0'

  project_module :merge_request_links do
    permission :view_associated_merge_requests, {}
  end
end

require_relative 'lib/redmine_merge_request_links'
