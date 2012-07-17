require 'spec_helper'

describe Kid do
  it { should have_db_column(:name).of_type(:string) }
  it { should have_db_column(:address_id).of_type(:integer) }
  it { should have_db_column(:created_at).of_type(:datetime) }
  it { should have_db_column(:updated_at).of_type(:datetime) }

  it { should have_db_column(:active).of_type(:boolean) }
end
