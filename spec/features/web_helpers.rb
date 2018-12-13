def sign_in_and_play
    visit('/')
    fill_in :player_1_name, with: 'Mario'
    fill_in :player_2_name, with: 'Bowzer'
    click_button 'Submit'
end
