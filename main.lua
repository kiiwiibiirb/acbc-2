require "button" -- Require the library so we can use it

function love.load()
    local flags = { -- Setting up a table called flags with data for our button
        -- Position and size.
        xPos = 10,
        yPos = 10,
        width = 100,
        height = 50,
        
        -- Colour for the button
        color = {
            red = 0,
            green = 0,
            blue = 255,
        },

        -- Settings for the border.
        border = {
            width = 2,
            red = 0,
            green = 0,
            blue = 0,
        },

        onClick = { -- The onClick function; decides what happens when the button gets clicked
            func = print, -- When clicked, call the function print...
            args = {"hai"}, -- with the argument 'hai'
        },
    }

    id = button.spawn(flags) -- Spawns the button
end


function love.update(dt)
    button.update() -- Updates all the buttons
end

function love.draw()
    button.draw() -- Draws all the buttons.
end