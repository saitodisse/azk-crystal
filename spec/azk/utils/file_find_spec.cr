require "../../spec_helper"
require "file"

describe Utils::FileFind do
  slim_path = AzkSpec.fixture("slim-app")
  filename  = "Azkfile.js"

  it("should find file in a project folder") do
    file = Utils::FileFind.find(slim_path, filename)
    file.should eq(File.join(slim_path, filename))
  end

  it("should find file in project folder starting with subdirectories") do
    slim_sub  = AzkSpec.fixture("slim-app", "lib")
    file = Utils::FileFind.find(slim_sub, filename)
    file.should eq(File.join(slim_path, filename))
  end
end
