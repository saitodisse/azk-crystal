require "./azk/*"
require "./azk/utils/*"
require "duktape"
require "file"

module Azk
  extend self

  def main
    sbx = Duktape::Sandbox.new
    sbx.eval! File.read("./share/main.js")
  end
end

Azk.main
