require 'test_helper'

class NavigationCellTest < Cell::TestCase
  test "primary_tabs" do
    invoke :primary_tabs
    assert_select "p"
  end
end