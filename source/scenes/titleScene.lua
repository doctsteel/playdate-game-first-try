local pd <const> = playdate
local gfx <const> = pd.graphics
local ui <const> = pd.ui

Title = {}
class("Title").extends(BaseScene)

local background_image <const> = gfx.image.new("/assets/images/game_bg.png")
local bg_image <const> = gfx.sprite.new(background_image)
bg_image:setCenter(0,0)
bg_image:moveTo(0,0)
--bg_image:setZIndex(0)
-- back ground scroll and title animation duration
local logo_image <const> = gfx.image.new("/assets/images/GAME.png")
local logo_sprite <const> = gfx.sprite.new(logo_image)
logo_sprite:setSize(1,1)
logo_sprite:setCenter(0.5,0.5)
--logo_sprite:setZIndex(1)
logo_sprite:moveTo(200,90)

local titleAnimator = gfx.animator.new(5000, 0, 240, pd.easingFunctions.inOutQuart)
local logoAnimator = gfx.animator.new(3000, 0, 1, pd.easingFunctions.inOutQuart, 5000)

function Title:init()
    Title.super.init(self)
    titleAnimator.repeatCount = 0
    logoAnimator.repeatCount = 0
end

function Title:enter()
    Title.super.enter(self)
        print("poggers")
        self:addSprite(bg_image)
        self:addSprite(logo_sprite)
end

function Title:update()
    Title.super.update(self)
    bg_image:moveTo(0, -240 + titleAnimator:currentValue())
    logo_sprite:setSize(227*logoAnimator:currentValue(), 81*logoAnimator:currentValue())
    if logoAnimator:ended() then
       ui.crankIndicator:draw()
    end 

end
    