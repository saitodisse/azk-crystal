require "./azk/*"
require "./azk/utils/*"
require "duktape"
require "file"

module Azk
  extend self

  ifdef release
    macro js_content(dir, file)
      \{{ run("./azk/build_utils/js_content", {{dir}}, {{file}}) }}
    end
  else
    macro js_content(dir, file)
      %file = File.join({{dir}}, {{file}})
      File.read(%file)
    end
  end

  def main
    sbx = Duktape::Sandbox.new
    sbx.eval! js_content(__DIR__, "../share/main.js")
  end
end

Azk.main
