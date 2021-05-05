local http = require("socket.http")
ltn12 = require("ltn12")

local payload = [[ {"username":"NAME","avatar_url":"","content":"MESSAGE"} ]]

http.request
{
    url = "https://discordapp.com/api/webhooks/<redacted>",
    method = "POST",
    headers =
    {
        ["Content-Type"] = "application/json",
        ["Content-Length"] = payload:len()
    },
    source = ltn12.source.string(payload),
}