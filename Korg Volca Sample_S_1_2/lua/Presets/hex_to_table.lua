function hex_to_table(hex_string)
    local data = {}
    for hex in string.gmatch(hex_string, '%S+') do
        table.insert(data, hex)
    end
    return data
end