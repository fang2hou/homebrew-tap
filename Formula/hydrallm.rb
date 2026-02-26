# typed: false
# frozen_string_literal: true

class Hydrallm < Formula
  desc "High-performance LLM API proxy with automatic retry and fallback"
  homepage "https://github.com/fang2hou/hydrallm"
  version "1.1.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fang2hou/hydrallm/releases/download/v1.1.0/hydrallm-darwin-amd64.tar.gz"
      sha256 "9ca049092accfdf1eca10356bbcf900f8a0abe29db8444926fae538b992cfdb9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/fang2hou/hydrallm/releases/download/v1.1.0/hydrallm-darwin-arm64.tar.gz"
      sha256 "5ca0dce1bc82491ddd3e78003842735cb739d3bbde8f7d10ad76d0b64424cc05"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/fang2hou/hydrallm/releases/download/v1.1.0/hydrallm-linux-amd64.tar.gz"
      sha256 "8893e3bf1d7afbe70555e4855d1dd73ea0fbcbb5aef81e3f5dac2addb9ab2fd8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fang2hou/hydrallm/releases/download/v1.1.0/hydrallm-linux-arm64.tar.gz"
      sha256 "ba186aba9cbb2c1b292e1dec5460f36636810645498ff2b10437a66539cac0c0"
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