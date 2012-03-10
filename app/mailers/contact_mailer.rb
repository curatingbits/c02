class ContactMailer < ActionMailer::Base
  def contact_submission(contact)
     @contact = contact
     mail(:to =>  "Duggan@uncarbonatedsoftware.com, jake@uncarbonatedsoftware.com, jeff@uncarbonatedsoftware.com" , :subject => "UNCO2 Contact Submission", :from => "contact@so6ix.com")
   end
end
