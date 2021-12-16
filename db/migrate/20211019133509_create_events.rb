class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table 'events' do |t|
      t.text 'event_name'
      t.text 'event_description'
      t.datetime 'date'
      t.references 'org'

      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end
end
