# nHttpHandler

# PREVIEW VIDEO
## https://streamable.com/u8zlxv

# USAGE
## POST METHOD via web server

```
axios.post('http://localhost:30120/nHttpHandler', JSON.stringify({
    event: 'anyString',
    val1: 'val1',
    val2: 'val2'
})).then(res => {
    console.log(res.data);
});
```

```
axios.post('fivem_server_ip:fivem_server_port/script_name', JSON.stringify({
    event: 'anyString',
    val1: 'val1',
    val2: 'val2'
})).then(res => {
    console.log(res.data);
});
```