# typed: false
# frozen_string_literal: true

class Hydrallm < Formula
  desc "High-performance LLM API proxy with automatic retry and fallback"
  homepage "https://github.com/fang2hou/hydrallm"
  version "1.1.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fang2hou/hydrallm/releases/download/v1.1.1/hydrallm-darwin-amd64.tar.gz"
      sha256 "6f0b0ae39ec8bc0c851f194af7657796187d9d1681c7d938ea99d9ff02be68f1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/fang2hou/hydrallm/releases/download/v1.1.1/hydrallm-darwin-arm64.tar.gz"
      sha256 "b39d7a02fe9b9e7d2036f6a07d1b2dcd0d7e81a2c231ea17c4e1db463f2611b2"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/fang2hou/hydrallm/releases/download/v1.1.1/hydrallm-linux-amd64.tar.gz"
      sha256 "00bf4f00a6cde70651bc2ec13486f52a275c21386730d5093b9e44bbded17565"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fang2hou/hydrallm/releases/download/v1.1.1/hydrallm-linux-arm64.tar.gz"
      sha256 "0a742c0552681228caad37b3ef3e0a0d8a6421c5d3a4d82f73f03bbb643b5143"
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

      Note: brew services runs under launchd/systemd and may not inherit your shell environment.
      For authentication, configure `api_key` explicitly in your config instead of relying on environment variables.

      To run hydrallm directly:
        hydrallm serve
    EOS
  end

  test do
    system "#{bin}/hydrallm", "version"
  end
end