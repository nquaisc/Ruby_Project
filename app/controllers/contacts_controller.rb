class ContactsController < ApplicationController
  
  def index
  @Contact = Contact.all
  end
end
