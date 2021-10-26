# frozen_string_literal: true

def caesar_cypher(plaintext, shift_factor)
  cypher_text_array = []
  plaintext.codepoints.each do |ordinal|
    cypher_text_array.push(shift_char(ordinal, shift_factor))
  end
  cypher_text = cypher_text_array.join
  p cypher_text
end

def shift_char(ordinal, shift_factor, return_char = '')
  return_char = if ordinal.between?(65, 90)
                  if ordinal + shift_factor > 90
                    64 + ordinal + shift_factor - 90
                  else
                    ordinal + shift_factor
                  end
                elsif ordinal.between?(97, 122)
                  if ordinal + shift_factor > 122
                    97 + ordinal + shift_factor - 122
                  else
                    ordinal + shift_factor
                  end
                else
                  ordinal
                end
  return_char.chr
end

caesar_cypher("Hello, it's me, I was wondering", 1)
