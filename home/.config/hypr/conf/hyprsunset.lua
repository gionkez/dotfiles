local config = {
    max_gamma = 100,
    profiles = {
        {
            time = '08:00',
            temperature = 6000,
            gamma = 1.0,
            identity = false
        },
        {
            time = '19:00',
            temperature = 3500,
            gamma = 1.0,
            identity = false
        }
    }
}

local function generate_conf()
    local config_dir = os.getenv('HOME') .. '/.config/hypr/conf'
    local path = config_dir .. '/hyprsunset.conf'
    os.execute('mkdir -p ' .. config_dir)
    local file = io.open(path, 'w')
    if not file then 
        print('[hyprsunset.lua] error: could not open file for writing at ' .. path)
        return 
    end
    file:write(string.format('max-gamma = %s\n\n', tostring(config.max_gamma)))
    for _, profile in ipairs(config.profiles) do
        file:write('profile {\n')
        file:write(string.format('    time = %s\n', profile.time))
        file:write(string.format('    temperature = %s\n', tostring(profile.temperature)))
        file:write(string.format('    gamma = %s\n', tostring(profile.gamma)))
        file:write(string.format('    identity = %s\n', tostring(profile.identity)))
        file:write('}\n\n')
    end
    file:close()
end

generate_conf()
