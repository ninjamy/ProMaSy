require 'tiny_tds'    
    print 'test'       
    client = TinyTds::Client.new username: 'RailsUser', password: 'sliaR23#',  host: 'localhost', port: 1433, database: 'ProMaSy'
    print 'please'
    results = client.execute("Select * From Company")
    results.each do |row|  
    puts row  
    end  


     