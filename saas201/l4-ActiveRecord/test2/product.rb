class Product<ActiveRecord::Base
     def to_formatted_string
           "#{product_id} - #{product_name} - #{cost}" 
      end
end