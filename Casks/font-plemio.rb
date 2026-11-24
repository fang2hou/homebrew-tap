cask "font-plemio" do
  version "0.1.1"
  sha256 "4c2523ce130f23ec6269afa239c2091558d90ddf78c981191f5c50aa9ebef750"

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
