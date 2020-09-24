# 条件分岐の課題
puts "旅行プランを選択してください"
plans = [
  {number: 1, place: "沖縄", price: 10000},
  {number: 2, place: "北海道", price: 20000},
  {number: 3, place: "九州", price: 15000}
]

plans.each do |plan|
  puts "#{plan[:number]}. #{plan[:place]}旅行（¥#{plan[:price]}）"
end

plan_number = gets.chomp.to_i

 if plan_number > 3
   puts "存在しない番号です。１〜3の間で入力し直してください"
   plan_number = gets.chomp.to_i
 end

plan_choice = plans[plan_number - 1]
puts "#{plan_choice[:place]}ですね、何人で行きますか？"

member = gets.chomp.to_i

if member <= 0
 puts "人数は0人以上にしてください"
 member = gets.chomp.to_i
end

if member >= 5
  puts "五人以上なので10%割引となります"
  sum = "合計金額:#{(plan_choice[:price] * member) * 90/100}"
else
  sum = "合計金額:#{plan_choice[:price] * member}"
 end

  puts sum
