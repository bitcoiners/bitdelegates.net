class CreateDacsDacs < ActiveRecord::Migration

  def up
    create_table :refinery_dacs do |t|
      t.string :name
      t.text :description
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-dacs"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/dacs/dacs"})
    end

    drop_table :refinery_dacs

  end

end
