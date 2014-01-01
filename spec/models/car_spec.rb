require 'spec_helper'

describe Car do
  it { should have_valid(:color).when('red', 'yellow') }
  it { should_not have_valid(:color).when('', nil) }

  it { should have_valid(:year).when(1990, 2002) }
  it { should_not have_valid(:year).when(1980, nil) }

  it { should have_valid(:mileage).when(100, 10000) }
  it { should_not have_valid(:mileage).when('', nil, -1) }

  it { should have_valid(:description).when('drives good') }
end
