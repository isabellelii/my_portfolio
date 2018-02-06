describe 'Index Page', type: :feature do
  it 'displays project list' do
    visit '/'

    expect(page).to have_css '.projects'
    within '.projects' do
      expect(page).to have_content 'My First Website'
      expect(page).to have_content 'FizzBuzz'
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

end
