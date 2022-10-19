class ApplicationController < ActionController::Base

def blank_square_form

  render ({ :template => "calculation_templates/square_form.html.erb"})

end

def blank_square_results

  @num = params.fetch("user_input").to_f
  @square= @num ** 2
  render ({ :template => "calculation_templates/square_form_results.html.erb"})

end
  
end
