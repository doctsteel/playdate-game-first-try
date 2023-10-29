import "CoreLibs/easing"
import "CoreLibs/object"
import "CoreLibs/sprites"
import "CoreLibs/timer"
import "CoreLibs/ui"

import "libraries/noble/Noble"

import "scenes/BaseScene"
import "scenes/TitleScene"

Noble.showFPS = true
-- In the future alwaysRedraw will default to false,
--     but for now we need to set it or it will draw every frame
Noble.new(Title, nil, nil, {alwaysRedraw=true})