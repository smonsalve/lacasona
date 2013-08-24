class CreateBusinessDocumentTypes < ActiveRecord::Migration
  def change
    create_table :business_document_types do |t|
      t.string :code

      t.timestamps
    end
  end
end
