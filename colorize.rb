class Colorize < Formula
  desc "Log colorizer tool"
  homepage "https://github.com/raszi/colorize"
  head "https://github.com/raszi/colorize.git"
  url "https://github.com/raszi/colorize/archive/v0.3.4.tar.gz"
  sha256 "25c876a0ca3f56b84b9954ece169d87888e471127140f7bfd4ef6580969c46e6"

  patch :DATA

  def install
    bin.install "colorize"
    etc.install "colorizerc"
    man1.install "colorize.1.gz"
  end
end

__END__
diff --git a/colorize b/colorize
index ea85b3f..388b75c 100755
--- a/colorize
+++ b/colorize
@@ -68,7 +68,7 @@ $default_output = "STDOUT";
 $default_color = "white";
 
 # Config file places (order is important, we will override the previous values of config)
-@config_files = ("/etc/colorizerc");
+@config_files = ("/usr/local/etc/colorizerc");
 if (defined($ENV{HOME})) {
 	push(@config_files, "$ENV{HOME}/.colorizerc");
 }
