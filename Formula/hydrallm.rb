# typed: false
# frozen_string_literal: true

class Hydrallm < Formula
  desc "CLI application"
  homepage "https://github.com/fang2hou/hydrallm"
  version "1.0.2"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fang2hou/hydrallm/releases/download/v1.0.2/hydrallm-darwin-amd64.tar.gz"
      sha256 "e7752b9c0dbf3a9dcc96dec5080c6b4b3ec6909257540d3b303e07f7c2c25d0b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/fang2hou/hydrallm/releases/download/v1.0.2/hydrallm-darwin-arm64.tar.gz"
      sha256 "0959aa4efe0764d5cd636d56d43351c5ea3203b4ccce056d78cb890a1811f9a7"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/fang2hou/hydrallm/releases/download/v1.0.2/hydrallm-linux-amd64.tar.gz"
      sha256 "1b59094a0dc257af1f897682c926fc203f5a094edbc2e13a7a163abb7b921ab7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fang2hou/hydrallm/releases/download/v1.0.2/hydrallm-linux-arm64.tar.gz"
      sha256 "d432cdc50fde8b79442feb4da4410d0611c77856c036703a4987d6ded26bd214"
    end
  end

  def install
    bin.install "hydrallm"
    generate_completions_from_executable(bin/"hydrallm", "completion")
    prefix.install_metafiles
  end

  service do
    run [opt_bin/"hydrallm", "serve"]
    keep_alive true
    log_path var/"log/hydrallm.log"
    error_log_path var/"log/hydrallm.error.log"
    working_dir Dir.home
    environment_variables PATH: std_service_path_env
  end

  def caveats
    <<~EOS
      To start hydrallm as a background service:
        brew services start hydrallm

      To run hydrallm directly:
        hydrallm serve
    EOS
  end

  test do
    system "#{bin}/hydrallm", "version"
  end
end