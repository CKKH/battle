feature 'View hit points' do
  scenario 'see hit points' do
    sign_in_and_play
    expect(page).to have_content 'Chris hit points: 100'
  end
end
