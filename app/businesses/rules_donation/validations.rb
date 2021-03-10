class RulesDonation::Validations
  def initialize(donation, options = {})
    @donation = donation
    @options = options
  end

  def denie_donation
    error_donation
  end

  private

  def error_donation
    errors.add[:base] << "Projeto encerrado, não é mais possível doar." if validate_date_donation
  end

  def validate_date_donation
    Date.today > @donation.project.endline
  end

end