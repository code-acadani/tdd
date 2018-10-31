#print all numbers from 1 to 100. if a number is a multiple of 3, print 'fizz' instead of the number. if a number is a muliple of 5, print 'buzz' instead of the number. if a number is a multiple of both 3 and 5, print 'fizzbuzz' instead of the number.

require 'rspec'

class Fizzbuzz
	def output(num)
		return "fizzbuzz" if num % 15 == 0
    return "fizz" if num % 3 == 0
    return "buzz" if num % 5 == 0
    return num
	end
end

RSpec.describe Fizzbuzz do
	describe '#output' do
		it 'should return 1 if given 1' do
			fizzbuzz = Fizzbuzz.new
			expect(fizzbuzz.output(1)).to eq(1)
		end
		it 'should return 2 if given 2' do
			fizzbuzz = Fizzbuzz.new
			expect(fizzbuzz.output(2)).to eq(2)
		end
		it 'should return fizz if given 3' do
			fizzbuzz = Fizzbuzz.new
			expect(fizzbuzz.output(3)).to eq('fizz')
		end
		it 'should return buzz if given 5' do
			fizzbuzz = Fizzbuzz.new
			expect(fizzbuzz.output(5)).to eq('buzz')
		end
		it 'should return fizz if given 6' do
			fizzbuzz = Fizzbuzz.new
			expect(fizzbuzz.output(6)).to eq('fizz')
		end
		it 'should return fizz if given 9' do
			fizzbuzz = Fizzbuzz.new
			expect(fizzbuzz.output(9)).to eq('fizz')
		end
		it 'should return buzz if given 10' do
			fizzbuzz = Fizzbuzz.new
			expect(fizzbuzz.output(10)).to eq('buzz')
		end
		it 'should return fizzbuzz if given 15' do
			fizzbuzz = Fizzbuzz.new
			expect(fizzbuzz.output(15)).to eq('fizzbuzz')
		end
		it 'should return fizzbuzz if given 30' do
			fizzbuzz = Fizzbuzz.new
			expect(fizzbuzz.output(30)).to eq('fizzbuzz')
		end
	end
end