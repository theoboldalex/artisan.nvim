ExecuteArtisanCommand = function(args)
    local command = "php artisan " .. args
    local handle = io.popen(command)
    if handle ~= nil or handle ~= '' then
        print(handle:read("*a"))
    end
end

vim.cmd([[ command! -nargs=1 Artisan :lua ExecuteArtisanCommand(<f-args>) ]])
