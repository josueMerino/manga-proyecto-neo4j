class ForceCreateMangakaNeoIdConstraint < ActiveGraph::Migrations::Base
  def up
    add_constraint :Mangaka, :neo_id, force: true
  end

  def down
    drop_constraint :Mangaka, :neo_id
  end
end
