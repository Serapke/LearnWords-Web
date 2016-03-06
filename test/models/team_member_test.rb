require 'test_helper'

class TeamMemberTest < ActiveSupport::TestCase

  def setup
    @member = team_members(:bran)
  end

  test "invalid without a name" do
    assert !@member.valid?, "Name is not being validated"
  end
  test "invalid image gives error message" do
    @member.valid?
    assert_presence(@member, :image)
  end
  test "invalid quote gives error message" do
    @member.valid?
    assert_presence(@member, :quote)
  end
  test "valid with all attributes" do
    member = team_members(:jon)
    assert member.valid?, "Member was not valid"
  end
  test "can generate email" do
    assert_equal "bran@email.com", @member.email
  end

  should validate_presence_of(:name)
  should validate_presence_of(:email)
  should validate_length_of(:name).is_at_least(6)
end
