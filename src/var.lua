local count = 1

local _M = {}

local function add()
    count = count + 1
end

local function sub()
    count = count - 1
end

function _M.calc()
    add()
    -- 模拟协程调度
    ngx.sleep(ngx.time()%0.003)
    sub()
    return count
end

return _M