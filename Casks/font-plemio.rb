cask "font-plemio" do
  version "0.1.0"
  sha256 "a4b34ca07b71041319b30543572e45c295073eff8e7fa430bb8febab7a42b936"

  url "https://github.com/fang2hou/Plemio/releases/download/v#{version}/Plemio-TTC.zip"
  name "Plemio"
  desc "2:1 monospaced CJK programming font based on IBM Plex"
  homepage "https://github.com/fang2hou/Plemio"

  font "Plemio-Bold.ttc"
  font "Plemio-BoldItalic.ttc"
  font "Plemio-ExtraLight.ttc"
  font "Plemio-ExtraLightItalic.ttc"
  font "Plemio-Italic.ttc"
  font "Plemio-Light.ttc"
  font "Plemio-LightItalic.ttc"
  font "Plemio-Medium.ttc"
  font "Plemio-MediumItalic.ttc"
  font "Plemio-Regular.ttc"
  font "Plemio-SemiBold.ttc"
  font "Plemio-SemiBoldItalic.ttc"
  font "Plemio-Text.ttc"
  font "Plemio-TextItalic.ttc"
  font "Plemio-Thin.ttc"
  font "Plemio-ThinItalic.ttc"

  zap :not_required
end
