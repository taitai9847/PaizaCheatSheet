import Foundation

var name: [String] = ["Alice", "Bob", "Alice", "Hoge", "Alice"]
var cal = ["200", "500", "300", "150", "400"]

///文字列の配列を整数型の配列に変換
let nums = cal.map{Int($0)!}
var sum = 0

for i in 0..<name.count {
	if name[i] == "Alice" {
		sum += nums[i]
	} else {
		sum += 0
	}
}
print(sum)


//let index = name.firstIndex(of: "Alice")
//let gg = zip(name, ca2)


//for i in 0..<name.count {
//	let a = name[i]
//	let b = ca2[
//	dict[a] = b
//}
//print(dict)
//

//
//var hoge = nums.reduce(0, { $0 + $1 })
//print(nums)
//print(hoge)
