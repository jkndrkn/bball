class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :surname, :null => false
      t.string :given_name, :null => false
      t.string :position, :null => false
      t.integer :year, :null => false
      t.integer :games, :default => 0, :null => false
      t.integer :games_started, :default => 0, :null => false
      t.integer :at_bats, :default => 0, :null => false
      t.integer :runs, :default => 0, :null => false
      t.integer :hits, :default => 0, :null => false
      t.integer :doubles, :default => 0, :null => false
      t.integer :triples, :default => 0, :null => false
      t.integer :home_runs, :default => 0, :null => false
      t.integer :rbi, :default => 0, :null => false
      t.integer :steals, :default => 0, :null => false
      t.integer :caught_stealing, :default => 0, :null => false
      t.integer :sacrifice_hits, :default => 0, :null => false
      t.integer :sacrifice_flies, :default => 0, :null => false
      t.integer :fielding_errors, :default => 0 # "errors" is a reserved attribute of ActiveRecord, :null => false
      t.integer :pb, :default => 0, :null => false
      t.integer :walks, :default => 0, :null => false
      t.integer :struck_out, :default => 0, :null => false
      t.integer :hit_by_pitch, :default => 0, :null => false

      t.timestamps
    end
  end
end
