FixtureBuilder.configure do |fbuilder|
  # rebuild fixtures automatically when these files change:
  fbuilder.files_to_check += Dir["spec/factories/*.rb", "spec/support/fixture_builder.rb"]

  # now declare objects
  fbuilder.factory do
    @arshia = Factory.create(:user, :email => "arshiakhan@gmail.com")
    @jr = Factory.create(:user, :email => "jboyens@fooninja.org")

    @faris = Factory.create(:inactive_kid, :name => "Faris")
    @jayda = Factory.create(:kid, :name => "Jayda")
    @laila = Factory.create(:kid, :name => "Laila")
  end
end
