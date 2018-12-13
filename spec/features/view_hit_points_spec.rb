feature 'View hit points' do
  scenario 'see hit points' do
    sign_in_and_play
    expect(page).to have_content 'Chris hit points: 100'
  end
end

feature 'Attack' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Chris attacked Dan'
  end
end
