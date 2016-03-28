require "spec"
require "../src/azk"
require "file"

module AzkSpec
  extend self

  def fixture(*args)
    File.join(__DIR__, "fixtures", *args)
  end
end
