local var = require "var"


if var.calc() == 1 then
    ngx.say("ok1")
else
    ngx.status = ngx.HTTP_INTERNAL_SERVER_ERROR
    ngx.say("error")
end