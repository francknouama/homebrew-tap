class GoStarter < Formula
  desc "Comprehensive Go project generator with modern best practices"
  homepage "https://github.com/francknouama/go-starter"
  url "https://github.com/francknouama/go-starter/archive/v1.2.1.tar.gz"
  sha256 "33f5df4abbb80db4fcf8ed677b802a554f7406842ae76cca2190ec1201575303"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/francknouama/go-starter/cmd.Version=#{version}")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/go-starter version")
  end
end