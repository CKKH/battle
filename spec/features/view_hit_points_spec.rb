feature 'View hit points' do
  scenario 'see player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Mario hit points: 100'
  end

  scenario 'see player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Bowzer hit points: 100'
  end
end

feature 'Attack' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Mario attacked Bowzer'
  end

  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Bowzer hit points: 90'
  end
end
