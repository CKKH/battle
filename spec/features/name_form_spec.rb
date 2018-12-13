feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Chris'
    fill_in :player_2_name, with: 'Dan'
    click_button 'Submit'
    expect(page).to have_content 'Chris vs Dan'
  end
end
