RegisterServerEvent("police:search-table")
AddEventHandler("police:search-table", function(firstnamev, lastnamev)
       local source = source
       local first_name = firstnamev
       local last_name = lastnamev
       exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM characters WHERE (first_name = @first_name)", {["@first_name"] = first_name}, function(search)
       if(search[1] == nil) then
            TriggerClientEvent("police:load-searchtable", source, {"Not", "In", "The", "Database"}, openUI)
       else
            TriggerClientEvent("police:load-searchtable", source, search, openUI )
       end
    end)
end)

RegisterServerEvent("ems:search-table")
AddEventHandler("ems:search-table", function(firstnamev)
       local source = source
       local first_name = firstnamev
       exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM characters WHERE (first_name = @first_name)", {["@first_name"] = first_name}, function(search)
       if(search[1] == nil) then
            TriggerClientEvent("ems:load-searchtable", source, {"Not", "In", "The", "Database"}, openUI)
       else
            TriggerClientEvent("ems:load-searchtable", source, search, openUI )
       end
    end)
end)

RegisterServerEvent('ems:loadslip')
AddEventHandler('ems:loadslip', function(id)
    local source = source
    exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM ems_records WHERE (id = @id)", {["@id"] = id}, function(report)
        TriggerClientEvent( "ems:loadselectreport", source, report[1], openUI)
    end)
end)

RegisterServerEvent('police:loadcitationslip')
AddEventHandler('police:loadcitationslip', function(id)
    local source = source
    exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM police_violations WHERE (id = @id)", {["@id"] = id}, function(report)
        TriggerClientEvent( "police:loadselectcitation", source, report[1], openUI)
    end)
end)

RegisterServerEvent('police:loadarrestslip')
AddEventHandler('police:loadarrestslip', function(id)
    local source = source
    exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM police_arrests WHERE (id = @id)", {["@id"] = id}, function(arrest)
        TriggerClientEvent( "police:loadselectarrest", source, arrest[1], openUI)
    end)
end)

-- Print contents of `tbl`, with indentation.
-- `indent` sets the initial level of indentation.

RegisterServerEvent("police:loadplayerdata")
AddEventHandler("police:loadplayerdata", function(id)
    local source = source
    local offender_name = ""
    local character_id = id
    local weapons_license = nil
    local drivers_license = nil
    local first_name, last_name = "",""
    exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM characters WHERE (character_id = @character_Id)", {["@character_id"] = id}, function(character)
        weapons_license = character[1].weapon_license
        drivers_license = character[1].drivers_license
        offender_name = character[1].first_name.." "..character[1].last_name
        first_name = character[1].first_name
        last_name = character[1].last_name
    end)
    exports['GHMattiMySQL']:QueryResultAsync("SELECT (SELECT COUNT(*) FROM mdt_arrest WHERE offender_character_id=@character_id) As 'arrest', (SELECT COUNT(*) FROM mdt_citation WHERE offender_character_id=@character_id) As 'citation', (SELECT COUNT(*) FROM mdt_warrant WHERE offender_character_id=@character_id) As 'warrant' FROM dual", {["@character_id"] = character_id}, function(values)
        exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM police_notepad WHERE (character_id = @character_id)", {["@character_id"] = character_id}, function(notes)
            exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM vehicles WHERE (character_id = @character_id)", {["@character_id"] = character_id}, function(vehicles)
                TriggerClientEvent( "police:loadplayerdata-client", source, first_name, last_name, character_id, values[1].arrest, values[1].warrant, values[1].citation, weapons_license, drivers_license )
                TriggerClientEvent( "police:loadvehiclesdata-client", source, vehicles )
                TriggerClientEvent('client:load-notepad', source, notes) 
            end)
        end)
    end)
end)

RegisterServerEvent("ems:loadplayerdata")
AddEventHandler("ems:loadplayerdata", function(lastname, firstname)
    local source = source
    local first_name = firstname
    local last_name = lastname
    local patient_name = first_name.." "..last_name
    local character_id = 0
    local dob = ""
    exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM characters WHERE (first_name = @first_name) AND (last_name = @last_name)", {["@first_name"] = first_name, ["@last_name"] = last_name}, function(character)
        character_id = character[1].character_id
        dob = character[1].dob
    end)
    --exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM ems_reports WHERE (patient_name = @patient_name)", {["@patient_name"] = patient_name}, function(reports)
        exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM ems_notepad WHERE (character_id = @character_id)", {["@character_id"] = character_id}, function(notepad)
            exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM emsmdt_database WHERE (patient_name = @patient_name)", {["@patient_name"] = patient_name}, function(records)
                if(records[1]~=nil)then
                    TriggerClientEvent( "ems:loadplayerdata-client", source, first_name, last_name, character_id, 1, dob, records[1].health_status, records[1].mental_status )
                    TriggerClientEvent( 'ems:load-notepad', source, notepad ) 
                else
                    TriggerClientEvent( "ems:loadplayerdata-client", source, first_name, last_name, character_id, 1, dob, "Healthy", 3 )
                    TriggerClientEvent( 'ems:load-notepad', source, notepad ) 
                end
            end)
        end)
    --end)
end)

RegisterServerEvent("police:loadarrestdata")
AddEventHandler("police:loadarrestdata", function(firstname, lastname)
    local source = source
    local first_name = firstname
    local last_name = lastname
    local offender_name = first_name.." "..last_name
    exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM characters WHERE (first_name = @first_name) AND (last_name = @last_name)", {["@first_name"] = first_name, ["@last_name"] = last_name}, function(character)
        exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM police_arrests WHERE (offender_name = @offender_name)", {["@offender_name"] = offender_name}, function(arrests)
            TriggerClientEvent( "police:loadarrestdata-client", source, arrests )
        end)
    end)
end)

RegisterServerEvent("ems:reportsload")
AddEventHandler("ems:reportsload", function(firstname, lastname)
    local source = source
    local first_name = firstname
    local last_name = lastname
    exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM ems_records WHERE (firstname = @first_name) AND (lastname = @last_name)", {["@first_name"] = first_name, ["@last_name"] = last_name}, function(records)
        TriggerClientEvent( "ems:loadreports", source, records )
    end)
end)

RegisterServerEvent("police:loadticketsdata")
AddEventHandler("police:loadticketsdata", function(firstname, lastname)
    local source = source
    local first_name = firstname
    local last_name = lastname
    local offender_name = first_name.." "..last_name
    exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM characters WHERE (first_name = @first_name) AND (last_name = @last_name)", {["@first_name"] = first_name, ["@last_name"] = last_name}, function(character)
        exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM police_violations WHERE (offender_name = @offender_name)", {["@offender_name"] = offender_name}, function(tickets)
            TriggerClientEvent( "police:loadticketsdata-client", source, tickets )
        end)
    end)
end)

RegisterServerEvent("police:new-arrest")
AddEventHandler("police:new-arrest", function(officer_name, offender_first_name, offender_last_name, description, charges, fine, sentence)
    local source = source; timestamp = os.time();
    local arrest = exports['GHMattiMySQL']:QueryResult("INSERT INTO police_arrests ( `timestamp`, `officer_name`, `offender_name`, `description`, `charges`, `fine`, `sentence` ) VALUES ( @timestamp, @officer_name, @offender_name, @description, @charges, @fine, @sentence ); SELECT * FROM police_arrests WHERE `id` = (SELECT LAST_INSERT_ID());", { 
        ['@timestamp'] = timestamp,
        ['@officer_name'] = officer_name,
        ['@offender_name'] = offender_first_name.." "..offender_last_name,
        ['@sentence'] = sentence,
        ['@fine'] = fine,
        ['@charges'] = charges,
        ['@description'] = description,
    })
    TriggerClientEvent("police:new-arrest", -1, arrest)
end)

RegisterServerEvent("ems:submit-report")
AddEventHandler("ems:submit-report", function(firstname, lastname, age, gender, date, location, injuries, treatment, parasign, docsign)
    local source = source; timestamp = os.time();
    local record = exports['GHMattiMySQL']:QueryResult("INSERT INTO ems_records ( `firstname`, `lastname`, `age`, `gender`, `date`, `location`, `description`, `treatment`, `parasign`, `docsign` ) VALUES ( @firstname, @lastname, @age, @gender, @date, @location, @injuries, @treatment, @parasign, @docsign ); SELECT * FROM ems_records WHERE `id` = (SELECT LAST_INSERT_ID());", { 
        ['@firstname'] = firstname,
        ['@lastname'] = lastname,
        ['@age'] = age,
        ['@gender'] = gender,
        ['@date'] = timestamp,
        ['@location'] = location,
        ['@injuries'] = injuries,
        ['@treatment'] = treatment,
        ['@parasign'] = parasign,
        ['@docsign'] = docsign,
    })
    TriggerClientEvent("ems:new-record", -1, record)
end)

RegisterServerEvent("police:new-citation")
AddEventHandler("police:new-citation", function(officer_name, offender_first_name, offender_last_name, charges, fine, plate, model, color, street, city)
    local source = source; timestamp = os.time();
    local citation = exports['GHMattiMySQL']:QueryResult("INSERT INTO police_violations ( `timestamp`,`officer_name`,`offender_name`,`fine`,`violations`,`plate`,`model`,`color`,`street`,`city` ) VALUES ( @timestamp, @officer_name, @offender_name, @fine, @violations, @plate, @model, @color, @street, @city ); SELECT * FROM police_violations WHERE `id` = (SELECT LAST_INSERT_ID());", { 
        ['@timestamp'] = timestamp,
        ['@officer_name'] = officer_name,
        ['@offender_name'] = offender_first_name.." "..offender_last_name,
        ['@fine'] = fine,
        ['@violations'] = charges,
        ['@plate'] = plate,
        ['@model'] = model,
        ['@color'] = color,
        ['@street'] = street,
        ['@city'] = city,
    })
    TriggerClientEvent("police:new-citation", -1, citation)
end)

RegisterServerEvent("police:addannouncement")
AddEventHandler("police:addannouncement", function(officer, description)
    local source = source
    local announcement = exports['GHMattiMySQL']:QueryResult("INSERT INTO police_announcements ( `officer`, `description` ) VALUES ( @officer, @description ); SELECT * FROM police_announcements WHERE `id` = (SELECT LAST_INSERT_ID());", { 
        ['@officer'] = officer,
        ['@description'] = description,
    })
    TriggerClientEvent("police:new-announcement", -1, announcement)
end)

RegisterServerEvent("police:addbolo")
AddEventHandler("police:addbolo", function(name, description)
    local source = source
    local bolo = exports['GHMattiMySQL']:QueryResult("INSERT INTO police_bolos ( `name`, `description` ) VALUES ( @name, @description ); SELECT * FROM police_bolos WHERE `id` = (SELECT LAST_INSERT_ID());", { 
        ['@name'] = name,
        ['@description'] = description,
    })
    TriggerClientEvent("police:new-bolo", -1, bolo)
end)

RegisterServerEvent("police:addevent")
AddEventHandler("police:addevent", function(date, time, description)
    local source = source
    local event = exports['GHMattiMySQL']:QueryResult("INSERT INTO police_events ( `date`, `time`, `description` ) VALUES ( @date, @time, @description ); SELECT * FROM police_events WHERE `id` = (SELECT LAST_INSERT_ID());", { 
        ['@date'] = date,
        ['@time'] = time,
        ['@description'] = description,
    })
    TriggerClientEvent("police:new-event", -1, event)
end)

function setNotepad(character_id, notes)
    notepad = exports['GHMattiMySQL']:QueryAsync("UPDATE police_notepad SET `notes` = @notes WHERE ( `character_id` = @character_id );", { 
        ['@notes'] = notes,
        ['@character_id'] = character_id,
    })
end

function insertNotepad(character_id, notes)
    notepad = exports['GHMattiMySQL']:QueryAsync("INSERT INTO police_notepad ( `character_id`,`notes` ) VALUES ( @character_id, @notes ); SELECT * FROM police_notepad WHERE `id` = (SELECT LAST_INSERT_ID());", { 
        ['@character_id'] = character_id,
        ['@notes'] = notes,
    })
end

function setNotepadEMS(character_id, notes)
    notepad = exports['GHMattiMySQL']:QueryAsync("UPDATE ems_notepad SET `notes` = @notes WHERE ( `character_id` = @character_id );", { 
        ['@notes'] = notes,
        ['@character_id'] = character_id,
    })
end

function insertNotepadEMS(character_id, notes)
    notepad = exports['GHMattiMySQL']:QueryAsync("INSERT INTO ems_notepad ( `character_id`,`notes` ) VALUES ( @character_id, @notes ); SELECT * FROM ems_notepad WHERE `id` = (SELECT LAST_INSERT_ID());", { 
        ['@character_id'] = character_id,
        ['@notes'] = notes,
    })
end

function setMentalStatus(character_id, status)
    mental = exports['GHMattiMySQL']:QueryAsync("UPDATE emsmdt_database SET `mental_status` = @mental_status WHERE ( `character_id` = @character_id );", { 
        ['@mental_status'] = status,
        ['@character_id'] = character_id,
    })
end

function insertMentalStatus(character_id, patient, status)
    mental = exports['GHMattiMySQL']:QueryAsync("INSERT INTO emsmdt_database ( `character_id`,`patient_name`,`mental_status` ) VALUES ( @character_id, @patient_name, @mental_status ); SELECT * FROM emsmdt_database WHERE `id` = (SELECT LAST_INSERT_ID());", { 
        ['@character_id'] = character_id,
        ['@patient_name'] = patient,
        ['@mental_status'] = status,
    })
end

RegisterServerEvent("ems:update-mentalstatus")
AddEventHandler("ems:update-mentalstatus", function(firstname, lastname, statusv)
    local source = source
    local first_name, last_name, status = firstname, lastname, statusv
    local patient_name = first_name.." "..last_name
    local character_id = 0
    exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM characters WHERE (first_name = @first_name) AND (last_name = @last_name)", {["@first_name"] = first_name, ["@last_name"] = last_name}, function(character)
        character_id = character[1].character_id
        exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM emsmdt_database WHERE (character_id = @character_id)", {["@character_id"] = character_id}, function(health)
            if(health[1]==nil)then
                insertMentalStatus(character_id, patient_name, status)
            else
                setMentalStatus(character_id, status)
            end
        end)
    end)
end)

RegisterServerEvent("police:edit-notepad")
AddEventHandler("police:edit-notepad", function(firstname, lastname, notesv)
    local source = source
    local first_name, last_name, notes = firstname, lastname, notesv
    local character_id = 0
    exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM characters WHERE (first_name = @first_name) AND (last_name = @last_name)", {["@first_name"] = first_name, ["@last_name"] = last_name}, function(character)
        character_id = character[1].character_id
        exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM police_notepad WHERE (character_id = @character_id)", {["@character_id"] = character_id}, function(notepad)
            if(notepad[1]==nil)then
                insertNotepad(character_id, notes)
            else
                setNotepad(character_id, notes)
            end
        end)
    end)
end)

RegisterServerEvent("ems:edit-notepad")
AddEventHandler("ems:edit-notepad", function(firstname, lastname, notesv)
    local source = source
    local first_name, last_name, notes = firstname, lastname, notesv
    local character_id = 0
    exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM characters WHERE (first_name = @first_name) AND (last_name = @last_name)", {["@first_name"] = first_name, ["@last_name"] = last_name}, function(character)
        character_id = character[1].character_id
        exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM ems_notepad WHERE (character_id = @character_id)", {["@character_id"] = character_id}, function(notepad)
            if(notepad[1]==nil)then
                insertNotepadEMS(character_id, notes)
            else
                setNotepadEMS(character_id, notes)
            end
        end)
    end)
end)

function updateWarrant(description, charge, newdescription)
    warrant = exports['GHMattiMySQL']:QueryAsync("UPDATE police_warrants SET `location` = @charges WHERE ( `notes` = @description );", { 
        ['@charges'] = charge,
        ['@description'] = description,
    })
    warrant2 = exports['GHMattiMySQL']:QueryAsync("UPDATE police_warrants SET `notes` = @newdescription WHERE ( `notes` = @description );", { 
        ['@newdescription'] = newdescription,
        ['@description'] = description,
    })
end

RegisterServerEvent('police:edit-warrant')
AddEventHandler('police:edit-warrant', function(description, charges, newdescription)
    local source = source
    local desc, charge, ndesc = description, charges, newdescription
    exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM police_warrants WHERE (notes = @desc)", {["@desc"] = desc}, function(warrant)
        if(warrant[1]==nil)then
            
        else
            updateWarrant(desc, charge, ndesc)
        end
    end)
end)

RegisterServerEvent("police:load-warrants")
AddEventHandler("police:load-warrants", function(openUI)
    local source = source
    exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM police_warrants", {}, function(warrants)
        if(warrants[1] == nil) then
            TriggerClientEvent("police:loads-warrants", source, {}, openUI)
        else
            TriggerClientEvent("police:loads-warrants", source, warrants, openUI)
        end
    end)
end)

RegisterServerEvent("police:load-announcements")
AddEventHandler("police:load-announcements", function(openUI)
    local source = source
    exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM police_announcements", {}, function(announcements)
        if(announcements[1] == nil) then
            TriggerClientEvent("police:loads-announcements", source, {}, openUI)
        else
            TriggerClientEvent("police:loads-announcements", source, announcements, openUI)
        end
    end)
end)

RegisterServerEvent('police:deleteannouncement')
AddEventHandler('police:deleteannouncement', function(id)
    local source = source
    exports['GHMattiMySQL']:QueryAsync("DELETE FROM police_announcements WHERE id=@id", { ['@id'] = id})
end)

RegisterServerEvent('police:deletewarrant')
AddEventHandler('police:deletewarrant', function(id)
    local source = source
    exports['GHMattiMySQL']:QueryAsync("DELETE FROM police_warrants WHERE id=@id", { ['@id'] = id})
end)


RegisterServerEvent('police:deletebolo')
AddEventHandler('police:deletebolo', function(id)
    local source = source
    exports['GHMattiMySQL']:QueryAsync("DELETE FROM police_bolos WHERE id=@id", { ['@id'] = id})
end)

RegisterServerEvent('police:deleteevent')
AddEventHandler('police:deleteevent', function(id)
    local source = source
    exports['GHMattiMySQL']:QueryAsync("DELETE FROM police_events WHERE id=@id", { ['@id'] = id})
end)

RegisterServerEvent("police:load-bolos")
AddEventHandler("police:load-bolos", function(openUI)
    local source = source
    exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM police_bolos", {}, function(bolos)
        if(bolos[1] == nil) then
            TriggerClientEvent("police:loads-bolos", source, {}, openUI)
        else
            TriggerClientEvent("police:loads-bolos", source, bolos, openUI)
        end
    end)
end)

RegisterServerEvent("police:load-events")
AddEventHandler("police:load-events", function(openUI)
    local source = source
    exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM police_events", {}, function(events)
        if(events[1] == nil) then
            TriggerClientEvent("police:loads-events", source, {}, openUI)
        else
            TriggerClientEvent("police:loads-events", source, events, openUI)
        end
    end)
end)

RegisterServerEvent("police:selwarrants")
AddEventHandler("police:selwarrants", function(id)
    local source = source
    exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM police_warrants WHERE (id = @id)", {["@id"] = id}, function(warrant)
        TriggerClientEvent( "police:selectedwarrant", source, warrant[1] )
    end)
end)

RegisterServerEvent("police:submitreport")
AddEventHandler("police:submitreport", function(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22)
    local source = source
    local report = exports['GHMattiMySQL']:QueryResult("INSERT INTO police_reports ( `r1`, `r2`,  `r3`, `r4`, `r5`, `r6`, `r7`, `r8`, `r9`, `r10`, `r11`, `r12`, `r13`, `r14`, `r15`, `r16`, `r17`, `r18`, `r19`, `r20`, `r21`, `r22` ) VALUES ( @r1, @r2, @r3, @r4, @r5, @r6, @r7, @r8, @r9, @r10, @r11, @r12, @r13, @r14, @r15, @r16, @r17, @r18, @r19, @r20, @r21, @r22 ); SELECT * FROM police_reports WHERE `id` = (SELECT LAST_INSERT_ID());", { 
    ['@r1'] = r1,
    ['@r2'] = r2,
    ['@r3'] = r3,
    ['@r4'] = r4,
    ['@r5'] = r5,
    ['@r6'] = r6,
    ['@r7'] = r7,
    ['@r8'] = r8,
    ['@r9'] = r9,
    ['@r10'] = r10,
    ['@r11'] = r11,
    ['@r12'] = r12,
    ['@r13'] = r13,
    ['@r14'] = r14,
    ['@r15'] = r15,
    ['@r16'] = r16,
    ['@r17'] = r17,
    ['@r18'] = r18,
    ['@r19'] = r19,
    ['@r20'] = r20,
    ['@r21'] = r21,
    ['@r22'] = r22,
    })
    TriggerClientEvent("police:new-report", source, report)    
end)

RegisterServerEvent("police:loadreports")
AddEventHandler("police:loadreports", function(openUI)
    local source = source
    exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM police_reports", {}, function(reports)
        if(reports[1] == nil) then
            TriggerClientEvent("police:loadreports", source, {}, openUI)
        else
            TriggerClientEvent("police:loadreports", source, reports, openUI)
        end
    end)
end)

RegisterServerEvent("police:loadreport")
AddEventHandler("police:loadreport", function(idv)
    local source = source
    local id = idv
    exports['GHMattiMySQL']:QueryResultAsync("SELECT * FROM police_reports WHERE (id = @id)", {["@id"] = id}, function(report)
        TriggerClientEvent( "police:loadreport", source, report[1] )
    end)
end)

RegisterServerEvent("police:new-warrant")
AddEventHandler("police:new-warrant", function(firstname, lastname, description, officer, notes, evidence, signature, header)
    local source = source; timestamp = os.time();
    local warrant = exports['GHMattiMySQL']:QueryResult("INSERT INTO police_warrants (`timestamp`,`officer_name`,`offender_name`,`description`,`notes`, `evidence`) VALUES (@timestamp,@officer_name,@offender_name,@description,@notes,@evidence); SELECT * FROM police_warrants WHERE `id` = (SELECT LAST_INSERT_ID());", { 
        ['@timestamp'] = timestamp,
        ['@officer_name'] = officer,
        ['@offender_name'] = firstname.." "..lastname,
        ['@description'] = description,
        ['@notes'] = notes,
        ['@evidence'] = evidence,
    })
    TriggerClientEvent("police:new-warrant", -1, warrant)
end)

RegisterServerEvent("police:remove-warrant")
AddEventHandler("police:remove-warrant", function(desc)
    exports['GHMattiMySQL']:QueryAsync("DELETE FROM police_warrants WHERE notes=@desc", { ['@desc'] = desc})
    TriggerClientEvent("police:remove-warrant", -1, desc)
end)

RegisterServerEvent("police:remove-arrest")
AddEventHandler("police:remove-arrest", function(id)
    exports['GHMattiMySQL']:QueryAsync("DELETE FROM police_arrests WHERE id=@id", { ['@id'] = id})
    TriggerClientEvent("police:remove-arrest", -1, id)
end)

RegisterServerEvent("police:remove-violation")
AddEventHandler("police:remove-violation", function(id)
    exports['GHMattiMySQL']:QueryAsync("DELETE FROM police_violations WHERE id=@id", { ['@id'] = id})
    TriggerClientEvent("police:remove-violation", -1, id)
end)