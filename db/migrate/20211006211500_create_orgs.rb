class CreateOrgs < ActiveRecord::Migration[6.0]
  def change
    create_table 'orgs' do |t|
      t.text 'name'
      t.text 'location'
      t.text 'description'
      t.text 'website'
      

      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end
end