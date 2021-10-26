# frozen_string_literal: true

def substrings(str, dictionary)
  split_str = str.split(' ')
  new_hash = dictionary.reduce(Hash.new(0)) do |sum_instances, instance|
    split_str.each do |str_item|
      sum_instances[instance] += 1 if str_item.downcase.match?(instance.downcase)
    end
    sum_instances
  end
  p new_hash
end

user_dictionary = ['below', 'down', 'go', 'going', 'horn', 'how', 'howdy', 'it', 'i', ' low', 'own', 'part', 'partner', 'sit']

substrings("Howdy partner, sit down! How's it going?", user_dictionary)
