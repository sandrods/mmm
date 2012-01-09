class CreateNoticias < ActiveRecord::Migration

  def self.up
    create_table :noticias do |t|
      t.string :titulo
      t.text :corpo
      t.integer :imagem_id
      t.date :data_publicacao
      t.integer :position

      t.timestamps
    end

    add_index :noticias, :id

    load(Rails.root.join('db', 'seeds', 'noticias.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "noticias"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/noticias"})
    end

    drop_table :noticias
  end

end
