describe 'Index Page', type: :feature do
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

  it 'renders navigation bar partial' do
  visit '/'

  expect(page).to have_selector 'navbar'
  within 'navbar' do
    expect(page).to have_content 'navigation bar'
  end
end

expect(page).to have_selector 'header'
within 'header' do
  expect(page).to have_content 'Portfolio'
end
end
