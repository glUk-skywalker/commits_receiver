class ReceiverController < ApplicationController
  def input
    Commit.delete_all
  end

  def receive
    github = Github.new basic_auth: creds_line

    commits = github.repos.commits.all(params[:owner], params[:repo])
    page_exist = true
    while page_exist do
      commits.each do |commit|
        Commit.create(sha: commit.sha)
      end
      if commits.has_next_page?
        commits.next_page
      else
        page_exist = false
      end
    end

    redirect_to commits_path
  end
end