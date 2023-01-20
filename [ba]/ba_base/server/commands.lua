RegisterCommand("setadminrank", function(source, args, rawCommand)
    id = args[1]
    rang = args[2]
    if source > 0 then
        print("You are not console.")
    else
        if id == nil then
            print('nem')
        else
            if rang == 'admin' or rang == 'admin1' then
                print('ogen')
            else
                print('nem')
            end 
        end
    end
end, false)