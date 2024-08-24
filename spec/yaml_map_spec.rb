# frozen_string_literal: true

require "spec_helper"
require "tempfile"

RSpec.describe "yaml-map" do
  it "works" do
    file = Tempfile.create
    File.write(file, <<~INPUT)
      - 1
      - 2
      - 3
    INPUT
    expect(
      `cat #{file.path} | bin/yaml-map "it += 1"`
    ).to eq(<<~OUTPUT)
      ---
      - 2
      - 3
      - 4
    OUTPUT
  end
end
