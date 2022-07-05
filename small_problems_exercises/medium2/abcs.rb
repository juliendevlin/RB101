require 'pry'

SPELLING_BLOCKS = [ 
                    ['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'],
                    ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'], 
                    ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'], ['Z', 'M']
                  ]

def create_blocks(block_set)
  blocks = []
  block_set.each { |block| blocks << block }
  blocks
end

def block_word?(word)
  blocks_available = create_blocks(SPELLING_BLOCKS)
  block_used = true

  word.upcase.chars.each do |letter|
      blocks_available.each do |block|
      if block.include?(letter)
        blocks_available.delete(block)
        block_used = true
        break
      else
        block_used = false
      end
    end

    break if block_used == false
  end

  block_used
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true