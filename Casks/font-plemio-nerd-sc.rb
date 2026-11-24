cask "font-plemio-nerd-sc" do
  version "0.1.1"
  sha256 "caad92a6aa87ad8e4b29e80bda4834123fd2d99b1541e1f49c922399c6b66d6f"

  url "https://github.com/fang2hou/Plemio/releases/download/v#{version}/Plemio-Nerd-SC.zip"
  name "Plemio Nerd SC"
  desc "2:1 monospaced CJK programming font based on IBM Plex"
  homepage "https://github.com/fang2hou/Plemio"

  font "Plemio-Nerd-SC-Bold.ttf"
  font "Plemio-Nerd-SC-BoldItalic.ttf"
  font "Plemio-Nerd-SC-ExtraLight.ttf"
  font "Plemio-Nerd-SC-ExtraLightItalic.ttf"
  font "Plemio-Nerd-SC-Italic.ttf"
  font "Plemio-Nerd-SC-Light.ttf"
  font "Plemio-Nerd-SC-LightItalic.ttf"
  font "Plemio-Nerd-SC-Medium.ttf"
  font "Plemio-Nerd-SC-MediumItalic.ttf"
  font "Plemio-Nerd-SC-Regular.ttf"
  font "Plemio-Nerd-SC-SemiBold.ttf"
  font "Plemio-Nerd-SC-SemiBoldItalic.ttf"
  font "Plemio-Nerd-SC-Text.ttf"
  font "Plemio-Nerd-SC-TextItalic.ttf"
  font "Plemio-Nerd-SC-Thin.ttf"
  font "Plemio-Nerd-SC-ThinItalic.ttf"

  zap :not_required
end
