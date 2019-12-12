require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef",name:"Phil") }
  let(:flan) {Dessert.new("flan", 20,chef)}
  

  describe "#initialize" do
    it "sets a type" do 
      expect(flan.type).to eq("flan")
    end

    it "sets a quantity" do 
      expect(flan.quantity).to eq(20)
    end

    it "starts ingredients as an empty array" do 
      expect(flan.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect {Dessert.new("Air", "fton", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      flan.add_ingredient("Devil's cocaine")
      expect(flan.ingredients).to include("Devil's cocaine")
    end

  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ["Devil's lettuce", "Eggs", "child","sugar"]

      ingredients.each do |ingredient|
      flan.add_ingredient(ingredient)
      end

      expect(flan.ingredients).to eq(ingredients)
      flan.mix!
      expect(flan.ingredients).not_to eq(ingredients)
      expect(flan.ingredients.sort).to eq(ingredients.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      flan.eat(1)
      expect(flan.quantity).to eq(19)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { flan.eat(60)}.to raise_error("not enough left!")
    end
  end


  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
