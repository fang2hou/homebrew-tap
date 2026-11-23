cask "font-plemio-sc" do
  version "0.1.0"
  sha256 "6c6d0a0bd81c1dcb0acaf0acbf36acc4ad0dc513415178068c0212f9a4abd5e0"

  url "https://github.com/fang2hou/Plemio/releases/download/v#{version}/Plemio-SC.zip"
  name "Plemio SC"
  desc "2:1 monospaced CJK programming font based on IBM Plex"
  homepage "https://github.com/fang2hou/Plemio"

  font "Plemio-SC-Bold.ttf"
  font "Plemio-SC-BoldItalic.ttf"
  font "Plemio-SC-ExtraLight.ttf"
  font "Plemio-SC-ExtraLightItalic.ttf"
  font "Plemio-SC-Italic.ttf"
  font "Plemio-SC-Light.ttf"
  font "Plemio-SC-LightItalic.ttf"
  font "Plemio-SC-Medium.ttf"
  font "Plemio-SC-MediumItalic.ttf"
  font "Plemio-SC-Regular.ttf"
  font "Plemio-SC-SemiBold.ttf"
  font "Plemio-SC-SemiBoldItalic.ttf"
  font "Plemio-SC-Text.ttf"
  font "Plemio-SC-TextItalic.ttf"
  font "Plemio-SC-Thin.ttf"
  font "Plemio-SC-ThinItalic.ttf"

  zap :not_required
end
