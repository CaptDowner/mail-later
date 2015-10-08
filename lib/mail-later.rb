# encoding: UTF-8
require 'mail'

module MailLater

  # class defining the headers of any email
  class FutureHeader
    attr_accessor :header
    
    def initialize
      @header = {}
    end  
    
    # Provides a way to set custom headers, by passing in a hash
    def headers(hash = {})
      hash.each_pair do |k,v|
        @header[k] = v
      end
    end    
  end
  
  # class to define a future email.
  # once defined, write it to the database
  class FutureEmail
    attr_accessor :out_mail
    
    def initialize
      out_mail ||= {}
    end
    
    def show_email(id)
      
    end
   
  end
  
  # class to check for scheduled email
  # from the database and return the id's of 
  # scheduled emails
  class CheckEmail
    
    def initialize
    end
    
  end
  
  # stores an array of hashes of all email that is set to be sent
  # after NOW. 
  class EmailToSend
    
    def initialize
      
    end

  end

  # class to get the host, user, password and database name
  # and connect to the specific database to check, retrieve and send
  # any email due for delivery today, after its scheduled time.
  class DBConn
    
    def initialize
    end
  end
    
end
