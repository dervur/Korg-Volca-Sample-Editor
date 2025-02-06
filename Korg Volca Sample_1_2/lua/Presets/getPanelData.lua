function getPanelData()
	-- Create an empty table
    local global_data = {}

    -- Get reverb values
    global_data[1] = panel:getModulatorByName("Reverb Type"):getValue()
    global_data[2] = panel:getModulatorByName("Reverb Mix"):getValue()

    -- Get part 1 data
    local data1 = getPartData(1)
    -- Append part 1 data to the end of the data table
    for i=1, #data1 do
        table.insert(global_data, data1[i])
    end


    -- Get part 2 data
    local data2 = getPartData(2)
    -- Append part 2 data to the end of the global_data table
    for i=1, #data2 do
        table.insert(global_data, data2[i])
    end

    -- Get part 3 data
    local data3 = getPartData(3)
    -- Append part 3 data to the end of the global_data table
    for i=1, #data3 do
        table.insert(global_data, data3[i])
    end

    -- Get part 4 data
    local data4 = getPartData(4)
    -- Append part 4 data to the end of the global_data table
    for i=1, #data4 do
        table.insert(global_data, data4[i])
    end

    -- Get part 5 data
    local data5 = getPartData(5)
    -- Append part 5 data to the end of the global_data table
    for i=1, #data5 do
        table.insert(global_data, data5[i])
    end

    -- Get part 6 data
    local data6 = getPartData(6)
    -- Append part 6 data to the end of the global_data table
    for i=1, #data6 do
        table.insert(global_data, data6[i])
    end

    -- Get part 7 data
    local data7 = getPartData(7)
    -- Append part 7 data to the end of the global_data table
    for i=1, #data7 do
        table.insert(global_data, data7[i])
    end

    -- Get part 8 data
    local data8 = getPartData(8)
    -- Append part 8 data to the end of the global_data table
    for i=1, #data8 do
        table.insert(global_data, data8[i])
    end

    -- Get part 9 data
    local data9 = getPartData(9)
    -- Append part 9 data to the end of the global_data table
    for i=1, #data9 do
        table.insert(global_data, data9[i])
    end

    -- Get part 10 data
    local data10 = getPartData(10)
    -- Append part 10 data to the end of the global_data table
    for i=1, #data10 do
        table.insert(global_data, data10[i])
    end

    
    return global_data

end