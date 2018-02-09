describe 'Project Page', type: :feature do
  it 'displays project list' do
    visit '/'

    expect(page).to have_css '.projects'
    within '.projects' do
      expect(page).to have_content 'isabelleli.github.io'
      expect(page).to have_content 'FizzBuzz'
      expect(page).to have_content 'atm_challenge'
      expect(page).to have_content 'library_challenge'
    end
  end

  it 'renders footer partial' do
    visit '/'

    expect(page).to have_selector 'footer'
    within 'footer' do
      expect(page).to have_content 'Isabelles Portfolio'
      expect(page).to have_content 'On this website you will find all of my projects during my time at Craft Academy.'
      expect(page).to have_content 'Zurich, Switzerland'
      expect(page).to have_content 'isabellelidberg@live.se'
      expect(page).to have_content '+41 76 450 59 51'
    end
  end
end
