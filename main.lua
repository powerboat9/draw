function draw(map, txtColor, bkColor, thisTerm)
    local char = 128
    if not map[6] then
        for i = 1, 5 do
            map[i] = not map[i]
        end
        local temp = txtColor
        txtColor = bkColor
        bkColor = temp
    end
    char = char + ((map[1] and 1) or 0)
    char = char + ((map[2] and 2) or 0)
    char = char + ((map[3] and 4) or 0)
    char = char + ((map[4] and 8) or 0)
    char = char + ((map[5] and 16) or 0)
    thisTerm.blit(string.char(char), txtColor, bkColor)
end

function paint(image)
