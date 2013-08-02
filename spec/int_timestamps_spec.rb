# coding: utf-8
#
require 'spec_helper'

describe "test int timestamps" do 
  before(:each) do 
    User.delete_all
    @user = User.create(name: "happy")
  end

  it "should get right name" do 
    expect(@user.name).to eq("happy")
  end

  it "should get int time " do 
    expect(@user.created_at.class).to eq(Fixnum)
    expect(Time.at(@user.updated_at).year).to eq(Time.now.getlocal.year)
    expect(Time.at(@user.updated_at).month).to eq(Time.now.getlocal.month)
    expect(Time.at(@user.updated_at).day).to eq(Time.now.getlocal.day)
  end

  it "should updated_at not equal created_at after user updated " do 
    sleep(3)
    @user.update_attributes(name: "hello")
    expect(@user.name).to eq("hello")
    expect(@user.created_at).not_to eq(@user.updated_at)
  end 
end
