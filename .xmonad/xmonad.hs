-- Author: hpw@google.com (Hugh Wimberly)

import XMonad
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

altMask = mod1Mask

main = do
  xmonad $ defaultConfig
    { modMask = mod4Mask
    } `additionalKeys`
    [ ((controlMask .|. altMask, xK_l), spawn "gnome-screensaver-command -l")
    ]
