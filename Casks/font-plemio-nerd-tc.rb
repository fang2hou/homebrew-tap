cask "font-plemio-nerd-tc" do
  version "0.1.1"
  sha256 "aceb89bb50e32e9fe7b9d2fe1dc48c3b004a15aa9a17bbad93922d66df661081"

  url "https://github.com/fang2hou/Plemio/releases/download/v#{version}/Plemio-Nerd-TC.zip"
  name "Plemio Nerd TC"
  desc "2:1 monospaced CJK programming font based on IBM Plex"
  homepage "https://github.com/fang2hou/Plemio"

  font "Plemio-Nerd-TC-Bold.ttf"
  font "Plemio-Nerd-TC-BoldItalic.ttf"
  font "Plemio-Nerd-TC-ExtraLight.ttf"
  font "Plemio-Nerd-TC-ExtraLightItalic.ttf"
  font "Plemio-Nerd-TC-Italic.ttf"
  font "Plemio-Nerd-TC-Light.ttf"
  font "Plemio-Nerd-TC-LightItalic.ttf"
  font "Plemio-Nerd-TC-Medium.ttf"
  font "Plemio-Nerd-TC-MediumItalic.ttf"
  font "Plemio-Nerd-TC-Regular.ttf"
  font "Plemio-Nerd-TC-SemiBold.ttf"
  font "Plemio-Nerd-TC-SemiBoldItalic.ttf"
  font "Plemio-Nerd-TC-Text.ttf"
  font "Plemio-Nerd-TC-TextItalic.ttf"
  font "Plemio-Nerd-TC-Thin.ttf"
  font "Plemio-Nerd-TC-ThinItalic.ttf"

  zap :not_required
end
