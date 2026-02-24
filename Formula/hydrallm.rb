# typed: false
# frozen_string_literal: true

class Hydrallm < Formula
  desc "High-performance LLM API proxy with automatic retry and fallback"
  homepage "https://github.com/fang2hou/hydrallm"
  version "1.0.3"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fang2hou/hydrallm/releases/download/v1.0.3/hydrallm-darwin-amd64.tar.gz"
      sha256 "88aa619eb229ae29ecc921ca347d712ff69dceb7a3ad1749f92c1f45ecdd121c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/fang2hou/hydrallm/releases/download/v1.0.3/hydrallm-darwin-arm64.tar.gz"
      sha256 "c5dbbd94486447ed550885aa8abf32305cd221b8c622f2a8f4bf15ca7f58ab06"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/fang2hou/hydrallm/releases/download/v1.0.3/hydrallm-linux-amd64.tar.gz"
      sha256 "b89a709a62a1bea7850ac8e6c1efcb36c0af4f01555be8a2fbcfa46750dcfcba"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fang2hou/hydrallm/releases/download/v1.0.3/hydrallm-linux-arm64.tar.gz"
      sha256 "4451dce86f62d163027ba5255bd6f86d757ef103e739e2c6b7fae9e17ecc5218"
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