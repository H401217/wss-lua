local socket = require("socket")
local ssl = require("ssl") --optional
local ws = require("ws")

local params ={
  mode = "client",
  protocol = "tlsv1_2",
  key = "server-key.pem",
  certificate = "server-cert.pem",
  password = "",
  options = "all"
}--optional too

local client = ws.client()

client:connect("gateway.discord.gg","/",443,params)
--client:connect(host,path,port,params) / params enables wss

print(client:receive())

client:close()
