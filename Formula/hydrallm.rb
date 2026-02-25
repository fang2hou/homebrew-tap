# typed: false
# frozen_string_literal: true

class Hydrallm < Formula
  desc "High-performance LLM API proxy with automatic retry and fallback"
  homepage "https://github.com/fang2hou/hydrallm"
  version "1.0.4"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fang2hou/hydrallm/releases/download/v1.0.4/hydrallm-darwin-amd64.tar.gz"
      sha256 "8d0b72c49a9ae8c7b4d7c755506e95cb1ec1dc592f56665607ad9f66b7cd3a53"
    end
    if Hardware::CPU.arm?
      url "https://github.com/fang2hou/hydrallm/releases/download/v1.0.4/hydrallm-darwin-arm64.tar.gz"
      sha256 "4d7a11560b8a029b5d931339417b7bf4c34d8a7cc386fb2f8ac9f2690a863cac"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/fang2hou/hydrallm/releases/download/v1.0.4/hydrallm-linux-amd64.tar.gz"
      sha256 "e42a5820dcf18bfc3fcfeea81d2e85a943d5d1534c0b842cc3b0c050fa796478"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fang2hou/hydrallm/releases/download/v1.0.4/hydrallm-linux-arm64.tar.gz"
      sha256 "8a183d9df87f38b5698727603ee0355ca1b54f9691bee5e100b691f15813a128"
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