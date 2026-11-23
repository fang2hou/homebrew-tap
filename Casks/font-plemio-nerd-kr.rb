cask "font-plemio-nerd-kr" do
  version "0.1.0"
  sha256 "7c8ec866cf3368183bed46b8d5baff13d4831a424e726b4f922367f31128ae8e"

  url "https://github.com/fang2hou/Plemio/releases/download/v#{version}/Plemio-Nerd-KR.zip"
  name "Plemio Nerd KR"
  desc "2:1 monospaced CJK programming font based on IBM Plex"
  homepage "https://github.com/fang2hou/Plemio"

  font "Plemio-Nerd-KR-Bold.ttf"
  font "Plemio-Nerd-KR-BoldItalic.ttf"
  font "Plemio-Nerd-KR-ExtraLight.ttf"
  font "Plemio-Nerd-KR-ExtraLightItalic.ttf"
  font "Plemio-Nerd-KR-Italic.ttf"
  font "Plemio-Nerd-KR-Light.ttf"
  font "Plemio-Nerd-KR-LightItalic.ttf"
  font "Plemio-Nerd-KR-Medium.ttf"
  font "Plemio-Nerd-KR-MediumItalic.ttf"
  font "Plemio-Nerd-KR-Regular.ttf"
  font "Plemio-Nerd-KR-SemiBold.ttf"
  font "Plemio-Nerd-KR-SemiBoldItalic.ttf"
  font "Plemio-Nerd-KR-Text.ttf"
  font "Plemio-Nerd-KR-TextItalic.ttf"
  font "Plemio-Nerd-KR-Thin.ttf"
  font "Plemio-Nerd-KR-ThinItalic.ttf"

  zap :not_required
end
