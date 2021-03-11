class RulesDonation::Validations
  def initialize(donation = nil, options = {})
    @donation = donation
    @options = options
  end

  def denie_donation
    error_donation
  end

  def sum_collected(project)
    project.amount_collected += @donation.value_donation
    project.save
  end

  private

  def error_donation
    errors.add[:base] << "Projeto encerrado, não é mais possível doar." if validate_date_donation
  end

  def validate_date_donation
    Date.today > @donation.project.endline
  end

end