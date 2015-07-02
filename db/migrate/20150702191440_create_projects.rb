class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :github_link
      t.string :live_link
      t.timestamps
    end

    create_table :projects_skills, id: false do |t|
      t.belongs_to :project, index: true
      t.belongs_to :skill, index: true
    end

  end
end
