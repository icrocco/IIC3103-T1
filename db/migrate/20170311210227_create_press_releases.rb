class CreatePressReleases < ActiveRecord::Migration[5.0]
  def change
    create_table :press_releases do |t|
      t.string :headline
      t.text :subheadline
      t.text :body

      t.timestamps
    end
  end
end
