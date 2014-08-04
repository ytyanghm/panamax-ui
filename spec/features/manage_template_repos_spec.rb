require 'spec_helper'

describe 'managing template repos' do

  context 'as a user' do

    it 'can view a list of template repos' do

      visit '/template_repos'

      expect(page).to have_css 'h1', text: 'Sources'

    end

    it 'displays a form to add a new source' do
      visit '/template_repos'

      expect(page).to have_selector 'form.new_template_repo'

    end

    it 'can destroy a template repo' do
      visit '/template_repos'

      within 'li:first-child .template-repo-button-menu' do
        click_on 'delete'
      end

      expect(page).to have_css 'h1', text: 'Sources'
      # TODO: assert flash message
    end

  end

end
