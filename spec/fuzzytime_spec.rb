# encoding: utf-8
require 'spec_helper'

describe Fuzzytime do 

  it "should display midnight correctly" do
    t = Time.local(2012,1,1,0,0)
    Fuzzytime.fuzzy_time(t).should include "midnight"
  end

  it "should display noon correctly" do
    t = Time.local(2012,1,1,12,0)
    Fuzzytime.fuzzy_time(t).should include "noon"
  end

  it "should display 5 past correctly" do
    t = Time.local(2012,1,1,2,5)
    Fuzzytime.fuzzy_time(t).should include "5 past"
  end

  it "should display 10 past correctly" do
    t = Time.local(2012,1,1,12,10)
    Fuzzytime.fuzzy_time(t).should include "10 past"
  end

  it "should display 15 past correctly" do
    t = Time.local(2012,1,1,12,15)
    Fuzzytime.fuzzy_time(t).should include "quarter"
    Fuzzytime.fuzzy_time(t).should include "past"
  end

  it "should display 20 past correctly" do
    t = Time.local(2012,1,1,2,20)
    Fuzzytime.fuzzy_time(t).should include "20 past"
  end

  it "should display 25 past correctly" do
    t = Time.local(2012,1,1,2,25)
    Fuzzytime.fuzzy_time(t).should include "25 past"
  end

  it "should display 30 past correctly" do
    t = Time.local(2012,1,1,2,30)
    Fuzzytime.fuzzy_time(t).should include("half past")
  end

  it "should display 35 past correctly" do
    t = Time.local(2012,1,1,2,35)
    Fuzzytime.fuzzy_time(t).should include("25")
    Fuzzytime.fuzzy_time(t).should include("til")
  end

  it "should display 40 past correctly" do
    t = Time.local(2012,1,1,1,40)
    Fuzzytime.fuzzy_time(t).should include("20")
    Fuzzytime.fuzzy_time(t).should include("til")
  end

  it "should display 45 past correctly" do
    t = Time.local(2012,1,1,1,45)
    Fuzzytime.fuzzy_time(t).should include("quarter")
    Fuzzytime.fuzzy_time(t).should include("til")
  end

  it "should display 50 past correctly" do
    t = Time.local(2012,1,1,1,50)
    Fuzzytime.fuzzy_time(t).should include("10")
    Fuzzytime.fuzzy_time(t).should include("til")
  end

  it "should display 55 past correctly" do
    t = Time.local(2012,1,1,1,55)
    Fuzzytime.fuzzy_time(t).should include("5")
    Fuzzytime.fuzzy_time(t).should include("til")
  end

  it "should read 10PM correctly" do 
    t = Time.local(2012,1,1,22,00)
    Fuzzytime.fuzzy_time(t).should == "10 o'clock"
  end

  it "should display 11:45am correctly" do
    t = Time.local(2012,1,1,11,45)
    Fuzzytime.fuzzy_time(t).should == "quarter til noon"
  end

  it "should display 11:45pm correctly" do
    t = Time.local(2012,1,1,23,45)
    Fuzzytime.fuzzy_time(t).should == "quarter til midnight"
  end

  it "should display 12:15am correctly" do 
    t1 = Time.local(2012,1,1,0,15)
    Fuzzytime.fuzzy_time(t1).should == "quarter past midnight"
  end

  it "should display 12:15pm correctly" do 
    t1 = Time.local(2012,1,1,12,15)
    Fuzzytime.fuzzy_time(t1).should == "quarter past noon"
  end

  it "should display 5:15am and 5:15pm correctly" do 
    t1 = Time.local(2012,1,1,5,15)
    t2 = Time.local(2012,1,1,17,15)
    Fuzzytime.fuzzy_time(t1).should == "quarter past 5"
    Fuzzytime.fuzzy_time(t2).should == "quarter past 5"
  end

  it "should display 4:17pm correctly" do
    t1 = Time.local(2012,1,1,16,17)
    Fuzzytime.fuzzy_time(t1).should == "17 past 4"
  end

end
