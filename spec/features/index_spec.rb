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

  it 'displays education list' do
    visit '/'

    expect(page).to have_css '.education'
    within '.education' do
      expect(page).to have_content 'Thoren Business School'
      expect(page).to have_content 'Business and Communication'
      expect(page).to have_content '2011 - 2014'
    end
  end

  it 'displays work_experience list' do
    visit '/'

  expect(page).to have_css '.work_experience'
  within '.work_experience' do
    expect(page).to have_content 'Applications development assistant '
    expect(page).to have_content 'QualySense AG'
    expect(page).to have_content '2011 - 2014'
    expect(page).to have_content 'May 2017 - Present'
    expect(page).to have_content 'Zurich, Switzerland'
  end
end
end
