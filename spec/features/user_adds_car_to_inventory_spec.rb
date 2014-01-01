require 'spec_helper'

feature "User adds a new car" do
  scenario "With valid attributes" do
    car = FactoryGirl.create(:car)
    visit new_car_path
    fill_in "Color", with: car.color
    fill_in "Year", with: car.year
    fill_in "Mileage", with: car.mileage
    click_on "Save Car"

    expect(page).to have_content "Car successfully added"
  end

  scenario "With invalid attributes" do
    visit new_car_path
    click_on "Save Car"

    expect(page).to have_content "Color can't be blank"
    expect(page).to have_content "Year is not a number"
    expect(page).to have_content "Mileage is not a number"

  end
end
