a=[]
begin 
    puts "enter \n1. Add mail id	\n2. display all \n 3. display only edu mail ids \n4. search \n5. delete mail id by value\n 6. display unique domains of all mail ids \n7. count mail ids in given domain
    8. exit"
    ch=gets.chomp.to_i
    case ch
    when 1
        puts "enter email id"
        a.push(gets.chomp)
    when 2
        for i in a
            puts i
        end
    when 3
        for i in a
            puts i if i.end_with?"edu"
        end
    when 4
       
            puts "enter the mail to search"
            c=gets.chomp
            
            for i in a
                puts "found"  if i.eql?(c)
            end
            
            
            
    when 5
        puts "enter email to delete"
        mail=gets.chomp
        a.delete(mail)
    when 6
        b={}
        for i in a
            if  b.has_key?(i.split('@')[-1])
                b[(i.split('@'))[-1]]+=1
            else
                b[(i.split('@'))[-1]]=1
            end
        end
        puts b.keys
    when 7
        puts "enter the domain"
        domain=gets.chomp
        b={domain=>0}
        for i in a
            if i.split('@')[-1] ==domain
                b[domain]+=1
            end
        end
        puts "appeared #{b[domain]}times"
    when 8
        puts "thank you"
    else 
        puts"invalid input" 
    end
end while ch!=8


