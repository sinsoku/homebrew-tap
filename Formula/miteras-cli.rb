# frozen_string_literal: true

class MiterasCli < Formula
  desc "A command-line tool for MITERAS."
  homepage "https://github.com/sinsoku/miteras-cli"
  url "https://github.com/sinsoku/miteras-cli/releases/download/v0.2.0/miteras-x86_64-apple-darwin.zip"
  sha256 "303572a20afe4d2f8598e1c8bea400de7017fcd76789787f22a7d0c84dd0708e"
  version "0.2.0"

  def install
    bin.install "miteras"

    # Install completion files
    bash_completion.install "misc/miteras.bash" => "miteras"
    zsh_completion.install "misc/_miteras"
  end

  test do
    system "#{bin}/miteras --version"
  end
end
