def hayvanlar()
  puts "1)Hayvan ekle"
  puts "2)Hayvan görüntüle"
  puts "3)Hayvan Çıkart"
  puts "4)Çıkıs"
end

def hayvanEkle(bahce)
  hayvan = Hash.new
  puts "Ad :"
  hayvan['ad'] = gets

  hayvan['yas'] = gets.to_i
  puts "Yas:"
  bahce.append(hayvan)
  puts "eklendi"
end

def hayvanGoruntule(bahce)
  n = hayvan.length()
  for i in 0..(n - 1)
    hayvan = bahce[i]
    puts "#{i + 1}. hayvan"
    puts "Ad: #{hayvan['ad']}"

    puts "Yaş: #{hayvan['yas']}"
  end
end

def hayvanCikart(bahce)
  n = hayvan.length()
  for i in 0..(n - 1)
    hayvan = bahce[i]
    puts "#{i + 1}.hayvan"
  end
  puts "Kaçıncı hayvanı çıkartmak istiyorsun"
  secim = gets.to_i
  bahce.delete_at(secim - 1)
  puts "silme işlemi başarıyla gerçekleşti"
end

hayvan1 = Hash["deger1" => "aslan", "deger2" => "kedi", "deger3" => "cita"]
hayvan2 = Hash["deger4" => "maymun", "deger5" => "goril", "deger6" => "timsah"]

bahce = Array.new
bahce.append(hayvan1)
bahce.append(hayvan2)

loop do
  hayvanlar()
  puts "Seçiminiz:"
  secim = gets.to_i
  if secim == 1
    hayvanEkle(bahce)
  elsif secim == 2
    hayvanGoruntule(bahce)
  elsif secim == 3
    hayvanCikart(bahce)
  elsif secim == 4
    break
  end
end

puts "başarılı bir şekilde çıkış yapıldı"