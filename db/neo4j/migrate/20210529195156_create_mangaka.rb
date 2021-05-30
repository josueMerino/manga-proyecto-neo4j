class CreateMangaka < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :Mangaka, :uuid
  end

  def down
    drop_constraint :Mangaka, :uuid
  end
end
