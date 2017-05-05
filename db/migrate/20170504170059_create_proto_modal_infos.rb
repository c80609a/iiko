class CreateProtoModalInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :proto_modal_infos do |t|
      t.string :tag
      t.text :content

      t.timestamps
    end
  end
end
