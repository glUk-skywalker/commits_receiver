class CommitsController < ApplicationController
  def index
    @commits = Commit.paginate(page: params[:page], per_page: 10)
    @commits_total = Commit.count
  end

  def mass_removal
    params[:ids_list].split(';').each do |id|
      Commit.find(id).destroy
    end

    @commits = Commit.paginate(page: params[:page], per_page: 10)
    @commits_total = Commit.count

    respond_to do |format|
      format.js
    end
  end
end