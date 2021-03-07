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

  def unpermitted_date
    error_date
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

  def validate_date
    @project.start_date < Date.today
  end

  def error_date
    @project.errors[:base] << "Data não pode ser anterior a hoje" if validate_date
  end


end