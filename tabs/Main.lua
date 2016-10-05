-- Read Zip File

-- Use this function to perform your initial setup
function setup()
    print("Hello World!")
    Read("Wed-04")
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(40, 40, 50)

    -- This sets the line thickness
    strokeWidth(5)

    -- Do your drawing here
    
end

--Reads a file, if a callback routine is supplied, calls it after the read is complete.
--NOTE that this SHOULDN'T call the JSON routine as that would attempt to DECODE the file.
--We want the raw (sorta, see below) file from DropBox.
function Read(filename, callback)
    local url = "https://codeload.github.com/Mr-Coxall/" .. filename .. ".zip"
    print("https://codeload.github.com/Mr-Coxall/Wed-04.zip")
    print(url)
    --https://codeload.github.com/Mr-Coxall/Wed-04.zip
    http.request(url, didGetData, didNotGetData)
end


-- Our callback function
function didGetData( data, status, headers )
    print( status..' : '..data )
end

-- Our failure function
function didNotGetData( error )
    print( "Failed to get data. Error:" )
    print( error )
end
