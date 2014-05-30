require 'spec_helper'

describe Repository do
  describe "#new" do
    before(:all) do
      @repo = Repository.create(
                name: 'Example Repo',
                source: 'git@bitbucket.org:markmcconachie/example_repo.git')
    end

    it "creates a directory for the repo" do
      expect(File).to exist("#{Rails.root}/tmp/#{@repo.id}") 
    end

    it "clones the repo" do
      expect(File).to exist("#{Rails.root}/tmp/#{@repo.id}/.git") 
    end
  end
end
