describe 'index page', type: :feature do
  it 'displays education list' do
    visit '/'

    expect(page).to have_css '.education'
    within '.education' do
      expect(page).to have_content 'Thoren Business School'
      expect(page).to have_content 'CraftAcademy Bootcamp'
    end
  end

  it 'displays work experience list' do
    visit '/'

    expect(page).to have_css '.work_experience'
    within '.work_experience' do
      expect(page).to have_content 'Applications development assistant '
      expect(page).to have_content 'Sales manager, computer department'
      expect(page).to have_content 'Customer sales and service representative'
      expect(page).to have_content 'Order administrator'
    end
  end
end
