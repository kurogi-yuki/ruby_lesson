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

plan_number = gets.chomp.to_i - 1
plan_choice = plans[plan_number]
puts "#{plan_choice[:place]}ですね、何人で行きますか？"

member = gets.chomp.to_i

if member >= 5
  puts "五人以上なので10%割引となります"
  puts "合計金額:#{(plan_choice[:price] * member) * 90/100}"
else
  puts "合計金額:#{plan_choice[:price] * member}"
end
