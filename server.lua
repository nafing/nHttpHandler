SetHttpHandler(function(req, res)
    req.setDataHandler(function(body)
        local typeEvent = json.decode(body).event;
        print(typeEvent);
        print('cb from web server: ' .. body)
    end)

    res.writeHead(200, { ["Access-Control-Allow-Origin"] = "*"} )
    res.send('event received')
end)


--  POST METHOD via web server

--  axios.post('http://localhost:30120/nHttpHandler', JSON.stringify({
--      val1: 'val1',
--      val2: 'val2'
--  })).then(res => {
--      console.log(res.data);
--  });

--  axios.post('fivem_server_ip:fivem_server_port/script_name', JSON.stringify({
--      val1: 'val1',
--      val2: 'val2'
--  })).then(res => {
--      console.log(res.data);
--  });