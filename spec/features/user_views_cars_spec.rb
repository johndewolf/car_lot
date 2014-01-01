require 'spec_helper'

feature "User views all cars" do
  scenario "user navigates to index page" do
      car1 = FactoryGirl.create(:car)
      car2 = FactoryGirl.create(:car, color: 'black')
      car3 = FactoryGirl.create(:car, color: 'green')

    visit cars_path

    expect(page).to have_content "yellow"
    expect(page).to have_content "black"
    expect(page).to have_content "green"

  end
end
