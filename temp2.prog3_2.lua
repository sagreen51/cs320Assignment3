local stack = {}
local list = {}
local i = 0

local precedence = {["+"]=2;["-"]=2; ["*"]=3;["/"]=3}

local function InfixToPostfix(str)
--	print("Assignment 3-2, Steven Green, s.a.green51@gmail.com")	
    
    i = 1
    stack[1] = " "
    list[1] = " "


	for k, c in string.gmatch(str, "[^%a]")do 
	    if c=="+"or c=="-"or c=="*"or c=="/" then 
            if #stack == 0 then stack[1] = c
            else if (precedence[c] <= precedence[stack[#stack]]) then 
                while (precedence[c] <= precedence[stack[#stack]]) do 
                    list[i] = stack[#stack]
                    table.remove(stack,#stack)
                    i = i +1
                    end
                if (#stack = 0) then stack[1] = c
                else then 
                    list[i] = c  
                    i = i+1                
                end 
            else then stack[#stack+1] = c
            end
        else 
            list[i] = c
            i = i+1
	    end 
	end

	while (stack[1] ~= nil) do 
           list[i] = stack[#stack]
           table.remove(stack,#stack)  
           i = i+1       
    end 
    print("%s",table.concat(list," ")
	return table.concat(list," ")
end 

