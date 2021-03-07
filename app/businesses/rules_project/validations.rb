class RulesProject::Validations
  def initialize(project, options = {})
    @project = project
    @options = options
  end

  def total_per_cent
    calculate_per_cent
  end

  def unpermitted_goal
    error_goal
  end

  private

  def calculate_per_cent
    (100 * @project.amount_collected) / @project.goal
  end

  def validate_goal
    @project.goal < 0 || @project.goal > 500
  end

  def error_goal
    @project.errors[:base] << "Meta precisa estar entre 0 e 500" if validate_goal
  end
end