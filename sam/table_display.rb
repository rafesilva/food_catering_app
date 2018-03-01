require 'terminal-table'
require 'colorize'

module DisTable
    module_function
    def hash_vertical target
        # system "clear"
            
        rows = []
        target.each {|key| rows << key}
        table = Terminal::Table.new :rows => rows
        puts table
    end


    def hash_horizontal target
            # system "clear"
            
            rows = []

                head_col_add = []

                target.each_key {|key| head_col_add << key.upcase }

            rows << head_col_add

                col_add = []
                target.each_value {|value|
                    if value == "yes"
                        col_add << value.colorize(:yellow)
                    else
                        col_add << value
                    end
                }


            rows << col_add

            table = Terminal::Table.new :rows => rows
            puts table
    end

    def display_hash_3 target
        
            # system "clear"
            
            rows = []

                head_col_add = []

                target.each_key {|key| head_col_add << key.upcase }

            rows << head_col_add

                col_add = []
                target.each_value {|value,value2,value3|
                if value == "yes"
                    col_add << value+"\n"+value2+"\n"+value3.colorize(:yellow)
                else
                    col_add << value+"\n"+value2+"\n"+value3
                end
                 
                }

            rows << col_add

            # rows << ['LogIn::CUST_LIST[:allergies]', 3]
            table = Terminal::Table.new :rows => rows
            puts table
    end

    def display_array target
        rows = []
        rows << ["#{target.object_name.to_s}",100]
        col = []
            target.each {|key| col << key }
        rows << col

        table = Terminal::Table.new :rows => rows
        puts table
    end
end