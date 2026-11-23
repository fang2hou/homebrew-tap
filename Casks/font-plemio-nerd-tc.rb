cask "font-plemio-nerd-tc" do
  version "0.1.0"
  sha256 "6902e0321e6fc21ef1dae30883a932659dadd6cc374147cfe4dc75ebac37d3c0"

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
