
require "file"

module Azk::Utils::FileFind
  extend self

  def find(path, filename)
    check_path = File.join(path, filename)
    if !File.exists?(check_path)
      new_path = File.expand_path("..", path)
      return new_path != path ? find(new_path, filename) : nil
    end
    check_path
  end
end
