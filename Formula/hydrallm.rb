# typed: false
# frozen_string_literal: true

class Hydrallm < Formula
  desc "High-performance LLM API proxy with automatic retry and fallback"
  homepage "https://github.com/fang2hou/hydrallm"
  version "0.0.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fang2hou/hydrallm/releases/download/v0.0.1/hydrallm-darwin-amd64.tar.gz"
      sha256 "2b17230f47502522efe8f3c55bb0edfb53e772b854b924c90b097d3b3c77f37f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/fang2hou/hydrallm/releases/download/v0.0.1/hydrallm-darwin-arm64.tar.gz"
      sha256 "5fa7551e1bda4dfd211635fad7f12cc289658cced5d78c1bd70682e4936d0d67"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/fang2hou/hydrallm/releases/download/v0.0.1/hydrallm-linux-amd64.tar.gz"
      sha256 "d6ee406e4c61b27d89cf91b082277e2a65c6a63a3cdaac695cb43f7c672c43ec"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fang2hou/hydrallm/releases/download/v0.0.1/hydrallm-linux-arm64.tar.gz"
      sha256 "b01de8d0936edbcde7d326d4955ad0b12489ed28c17c83547842e0066c7f5b58"
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
