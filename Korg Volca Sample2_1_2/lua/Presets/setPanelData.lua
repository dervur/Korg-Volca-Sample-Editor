function setPanelData(data)

	-- Set reverb values
	panel:getModulatorByName("Reverb Mix"):setValue(data[1], true)

	-- Unpack the data tables for each part exclusing the first two entries
	local data1 = {unpack(data, 2, 16)}
	local data2 = {unpack(data, 17, 31)}
	local data3 = {unpack(data, 32, 46)}
	local data4 = {unpack(data, 47, 61)}
	local data5 = {unpack(data, 62, 76)}
	local data6 = {unpack(data, 77, 91)}
	local data7 = {unpack(data, 92, 106)}
	local data8 = {unpack(data, 107, 121)}
	local data9 = {unpack(data, 122, 136)}
	local data10 = {unpack(data, 137, 151)}

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