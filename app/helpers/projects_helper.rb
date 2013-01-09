module ProjectsHelper
  def project_on_board?(board)
    @project.boards.include?(board)
  end
end
