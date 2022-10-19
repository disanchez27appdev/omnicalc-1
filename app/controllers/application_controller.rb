class ApplicationController < ActionController::Base

  def index
    render ({ :template => "calculation_templates/square_form.html.erb"})
  end

  def blank_square_form
  render ({ :template => "calculation_templates/square_form.html.erb"})
end

def blank_square_results
  @num = params.fetch("user_input").to_f
  @square= @num ** 2

  render ({ :template => "calculation_templates/square_form_results.html.erb"})
end

def blank_square_root_form
  render ({ :template => "calculation_templates/square_root_form.html.erb"})
end

def blank_square_root_results
  @num = params.fetch("user_input").to_f
  @square_root= @num ** 0.5

  render ({ :template => "calculation_templates/square_root_form_results.html.erb"})
end

def blank_payment_form
  render ({ :template => "calculation_templates/payment_form.html.erb"})
end


def blank_payment_results
  @present_value      = params.fetch("principal_input").to_f
  @rate               = params.fetch("apr_input").to_f/100
  @number_of_periods  = params.fetch("periods_input").to_f

  @numerator = @present_value.to_f*@rate.to_f/12
  @denominator = (1-((1+(@rate.to_f/12)) ** (@number_of_periods.to_f*-12)).to_f)
  @payment = @numerator.to_f/@denominator.to_f

  render ({ :template => "calculation_templates/payment_form_results.html.erb"})
end

def blank_random_form
  render ({ :template => "calculation_templates/random_form.html.erb"})
end

def blank_random_results
  @min = params.fetch("min_input").to_f
  @max = params.fetch("max_input").to_f
  @rand = Kernel.rand(@max.to_f).to_f + Kernel.rand() + (@min-1)
  

  render ({ :template => "calculation_templates/random_form_results.html.erb"})
end
  
end
