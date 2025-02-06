function setPanelData(data)

	-- Set reverb values
	panel:getModulatorByName("Reverb Type"):setValue(data[1], true)
	panel:getModulatorByName("Reverb Mix"):setValue(data[2], true)

	-- Unpack the data tables for each part exclusing the first two entries
	local data1 = {unpack(data, 3, 18)}
	local data2 = {unpack(data, 19, 34)}
	local data3 = {unpack(data, 35, 50)}
	local data4 = {unpack(data, 51, 66)}
	local data5 = {unpack(data, 67, 82)}
	local data6 = {unpack(data, 83, 98)}
	local data7 = {unpack(data, 99, 114)}
	local data8 = {unpack(data, 115, 130)}
	local data9 = {unpack(data, 131, 146)}
	local data10 = {unpack(data, 147, 162)}

	-- Set parts
	setPartData(data1, 1)
	setPartData(data2, 2)
	setPartData(data3, 3)
	setPartData(data4, 4)
	setPartData(data5, 5)
	setPartData(data6, 6)
	setPartData(data7, 7)
	setPartData(data8, 8)
	setPartData(data9, 9)
	setPartData(data10, 10)

end