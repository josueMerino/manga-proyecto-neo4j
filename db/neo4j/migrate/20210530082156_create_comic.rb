class CreateComic < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :Comic, :uuid
  end

  def down
    drop_constraint :Comic, :uuid
  end
end
