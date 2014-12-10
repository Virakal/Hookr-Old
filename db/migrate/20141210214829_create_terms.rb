class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string :english
      t.string :american

      t.timestamps
    end
  end
end
