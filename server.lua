SetHttpHandler(function(req, res)
    req.setDataHandler(function(body)
        local data = json.decode(body)

        -- TEST EVENT
        if data.event == "kickPlayer" then
            kickPlayerFromServer(data.playerId, data.reason)
        else
            print("other events")
        end
    end)

    res.writeHead(200, { ["Access-Control-Allow-Origin"] = "*"} )
    res.send('event received')
end)

-- TEST PURPOSE
kickPlayerFromServer = function(playerId, reason)
    DropPlayer(playerId, reason)
end