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

  def unpermitted_start_date
    error_date
  end

  def unpermitted_endline
    error_endline
  end

  private

  def calculate_per_cent
    (100 * @project.amount_collected) / @project.goal
  end


  def error_goal
    @project.errors[:base] << "Meta precisa estar entre 0 e 500" if validate_goal
  end

  def validate_goal
    @project.goal < 0 || @project.goal > 500
  end

  def error_date
    @project.errors[:base] << "Data não pode ser anterior a hoje" if validate_start_date
  end

  def validate_start_date
    unless @project.amount_collected_change
      @project.start_date < Date.today
    end
  end

  def error_endline
    @project.errors[:base] << "Precisa encerrar amanhã ou em até 30 dias" if validate_endline
  end

  def validate_endline
    @project.endline <= Date.today || @project.endline >= Date.today + 30
  end

end