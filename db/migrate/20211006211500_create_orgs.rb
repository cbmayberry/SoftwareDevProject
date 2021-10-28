class CreateOrgs < ActiveRecord::Migration[6.0]
  def change
    create_table 'orgs' do |t|
      t.string 'name'
      t.string 'location'
      t.text 'description'
      t.string 'website'
      

      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end
end