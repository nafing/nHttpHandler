SetHttpHandler(function(req, res)
    req.setDataHandler(function(body)
        local typeEvent = json.decode(body).event;
        print(typeEvent);
        print('cb from web server: ' .. body)
    end)

    res.writeHead(200, { ["Access-Control-Allow-Origin"] = "*"} )
    res.send('event received')
end)