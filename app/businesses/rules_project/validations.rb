class RulesProject::Validations
  def initialize(project, options = {})
    @project = project
    @options = options
  end

  def total_per_cent
    calculate_per_cent
  end

  private

  def calculate_per_cent
    (100 * @project.amount_collected) / @project.goal
  end
end