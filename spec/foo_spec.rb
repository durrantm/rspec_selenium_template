describe 'Loads up correctly', :type => :feature do

  p = PageObject.new('spec/support/locators.yml')

  it 'Has the expected search input field' do
    visit( @root )
    expect(p.search).to be
  end
  it 'Shows results' do
    visit( @root )
    find(p.search).set("123\n")
    expect(page).to have_content 'results'
  end
end
