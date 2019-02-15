require 'tiny_tds'    
    print 'test'       
    client = TinyTds::Client.new username: 'RailsUser', password: 'sliaR23#',  
    host: 'amywork/sqlexpress', port: 1433,  
    database: 'ProMaSy', azure:false
    results = client.execute("Select * From Company")
    results.each do |row|  
    puts row  
    end  