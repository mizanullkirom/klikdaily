words = Array["panda", "nyamuk", "kucing", "kuda","kelinci","belalang","ayam"]
result = 0
for i in 0..words.size-1
  rand = words.sample
  question = rand.split('').shuffle.join
  puts "Kata acak = #{question}"  
  print "Jawaban : "
  x = gets.chomp
  if x == rand 
    result += 1
    puts "JAWABAN ANDA BENAR, POINT ANDA = 1"
  elsif x == ""
    puts "ANDA BELUM MEMASUKKAN JAWABAN!"
  else
    puts "JAWABAN ANDA SALAH!"
  end
  words.delete_at(words.index(rand))
end
puts "Nilai Anda : #{result}"