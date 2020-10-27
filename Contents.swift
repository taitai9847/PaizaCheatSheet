import Foundation
////paiza用のチートシート
//
/////標準入力
/////標準入力から一行目を取得
////let input_line = readLine()!
//
///String型で入ってくる値。ブランクで区切られている場合、split配列に代入
//let split: [String] = input_line.components(separatedBy: " ")

///文字列の配列を整数型の配列に変換
var name: [String] = ["Alice", "Bob", "Alice", "Hoge", "Alice"]
var cal = ["200", "500", "300", "150", "400"]
let nums = cal.map{Int($0)!} //=>[200, 500, 300, 150, 400]
///+α(Aliceという名前の人のcalの総和)
var sum = 0
for i in 0..<name.count {
	if name[i] == "Alice" {
		sum += nums[i]
	} else {
		sum += 0
	}
}
print(sum)

///文字配列を一文字づつにする
var a = "ABC"
var array = Array(a)
print(array) //=> ["A", "B", "C"]

///Int型の配列の合計値はreduceを使うと早い
var useReduce = nums.reduce(0, { $0 + $1 })
//print(useReduce)

///文字列の置換を行う
var str: String = "ABC"
var newStr: String = str.replacingOccurrences(of: "A", with: "4")
print(newStr)

///よく使う文字列操作
let input_line = "1 3 5 7"
let strings = input_line.split(separator: " ")
print(strings) //=> ["1", "3", "5", "7"]

///map:文字列=>数値に変換
let input_line2 = "1 3 5 7"
let strings2 = input_line2.split(separator: " ")
let numbers = strings2.map({Int($0)!})
print(numbers) //=> [1, 3, 5, 7]

///filter: 3の倍数に絞り込み
let input_line3 = "1 2 3 4 5 6"
let strings3 = input_line.split(separator: " ")
let numbers3 = strings.map({Int($0)!})
let filteredNumbers = numbers.filter({ $0 % 3 == 0 })
print(filteredNumbers) // => [3, 6]

///絶対値に変換
let absSample = -100
let absResult = abs(absSample)
print(absResult)

///filter
let aaa = [1, 2, 3, 4, 5, 6]
let filtered = aaa.filter ({ value in value % 2 == 0 })
print(filtered)


///要素絞り込み
let contain = ["paiza", "paiz", "piz", "pai", "a"]
var bbb = [String]()
for i in 0..<contain.count {
	if contain[i].contains("ai") {
		bbb.append(contain[i])
	}
}
print(bbb) /// => ["paiza", "paiz", "pai"]

var score2 = 0
var aaaa: Double = 4

for i in 1...99 {
	let hu = pow(Double(i), aaaa)
	score2 += Int(hu)
}
print(score2)
var score = 0
var hhh = [Int]()

for i in 1...20000 {
	
	if i % 3 == 0 {
		let b = i
		let c = String(i)
		if c.contains("3") {
			hhh.append(b)
		}
	}
}
//var useReduce = hhh.reduce(0, { $0 + $1 })


print(useReduce)
