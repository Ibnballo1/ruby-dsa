def duplicate_count(text)
  ('a'..'z').count { |chr| text.downcase.count(chr) > 1 }
end