class GoStarter < Formula
  desc "Comprehensive Go project generator with modern best practices"
  homepage "https://github.com/francknouama/go-starter"
  url "https://github.com/francknouama/go-starter/archive/v1.1.0.tar.gz"
  sha256 "6f69619fc8574c6420c3d0697b122118b265629359af4eb935fad23eea92405a"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/francknouama/go-starter/cmd.Version=#{version}")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/go-starter version")
  end
end
EOF < /dev/null