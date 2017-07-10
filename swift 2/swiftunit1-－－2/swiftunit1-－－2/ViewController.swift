//
//  ViewController.swift
//  swiftunit1-－－2
//
//  Created by 周佳兴 on 16/3/11.
//  Copyright © 2016年 周佳兴. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 不被用到的变量 都会被红标 ， 变量声明之后如果没被使用过就会被标红 ， 提示你作为 常量来声明
        
        // 类型推测 无论你输入任何类型 swift 都会为你进行推测
        
        let age = 1.88
        
        // 强制转换类型  和 OC 不同 （） 放在被转换的
       let  age1 = Int(age)
        
        print("age是", age, "age1是", age1)
        
        // 布尔类型和其他的都一样 Y ------ N
        
        // 元组
        
        let 元组内容 = ("周佳兴", "我爱你", 1314)
        
        print(元组内容)
        
        // 元组分解
        
        let (最帅的人, 最好的标签, 时间期效) = 元组内容
        
        print("最帅的人:\(最帅的人) ----- 最好的标签:\(最好的标签) -------- 时间期效:\(时间期效)")
        
        // 当想屏蔽元组其他内容只显示其中的 ---
        
        let (_, zuihaode, _) = 元组内容
        
        print("最好的:\(zuihaode)");
        
        // 也可以用角标显示内容
        
        let 角标 = 元组内容.1;
        
        
        // 可选类型 表示可能有值也可能不会有值 这就代表类型确定了
        
        var value : Int?
        
        if value == nil {
            print("usage 可选类型无测试值 -- ：")
        }else{
        print("可选类型有测试纸的")
        }
        // 给可选类型赋值正常赋值
        value = 99
        print("\(value!)")
        
        // 断言 就是断点
        
        // 赋值运算
        // + - * / %  —++1 --1
        // 三元运算 a?b:c
        // 区间
        //全闭区间1..5 == 1、2、3、4、5
        // 半闭区间 1..<5 == 1、2、3、4
        // 逻辑运算
        // 括号优先级
        
        // 字符串
        let string = ""
        let string1 = String()
        // 都是声明空字符串
        // 判断字符串是否为空
        string.isEmpty
        string1.isEmpty
        // 字符数
        string.characters.count
//    print("\(countElements(string))")
        // 用 + 连接字符 +=
        let youyige = "lalala\(string)";
        //可用 == 判断字符串相等 可 hasSuf hasPre
        
        
        // 集合类型 数组字典  数组里的数据类型必须数相同的 字典的所有键类型必须相同 所有值必须是相同类型
        var 数组 = ["追梦赤子心个", "徐歌阳", 12]
        
     print(数组[0])
        var 空数组:[String] = [string]
        //  和OC 一样通过下标修改 , .append 拼接 
        数组[0...2] = ["替换一部分"]
        
        数组.insert("inse", atIndex: 0)
        数组.removeAtIndex(0)
//        for (a, b) in enumerate(数组) {
//            print("\(a), \(b)")
//        }
        
        var 字典 = Dictionary<String,String>()
        
        var 字典有值 : Dictionary<String, String> = ["有值":"有值"]
        字典["添加值"] = "添加值"
        
        字典有值["值"] = "change"
        
        //流程控制语句
        
        var a1 = -898
        while a1<10 {
            a1++
        }
        print(a1)
        print(字典)
        print(字典["添加值"])
        
        for (key, value) in 字典 {
            print(key, value);
        }
        
        let ss = 1.73
        switch ss {
        case 1...3 where ss == 1.73:
            print("case")
            
        case 1...3 where ss == 2:
            print("case2")
        default:
            break
        }
        
        // namm 对外参数  name 对内参数
        func asyHi (namm name:String) -> String{
        
            return "字符"
        }
        
        // 对外参数
        let wqwqwqw = asyHi(namm:"字符")
        
        // 也可写成
        
//        func asasas (#name:String) ->String{
//        return "sad"
//        }
        
        // 函数默认为常量  func (var name name : String) 才可
        
        // 可同时改变函数内外的值
        
        var asasasasas = "asas"
        
        
        func asyHi1 (inout name:String) -> String{
            
            return "字符"
        }

        asyHi1(&asasasasas)
        
        print(asyHi(namm: "asas"))
        
        class 女神类{
            let age:Int = 30
            subscript (str: String)->Int{
            return age/2
            }
            
        }
        let 女神 = 女神类()
        
        
        // 这个下标 应该是自定义的 无论写什么都行 根据类型判断  subscript (Int:i) 就是传入整型 走的方法 可以用在 需要返回某个数组中的内容
        
        // 类的继承的的的额的啊打送到阿萨德按时擦除上吧
        class 妹子类:女神类{
        // 代表 妹子类 继承与女神类
        }
        
        // final 防止被重写 
        
        // 构造方法     
        class 构造方法 {
            var laal : String
           init() { // init (age:Int, name:String){
            laal = "构造方法"
            }
        
//            let a = 构造方法(age:12, name: "sayg")
        // 析构过程 类 被释放的  相当于 deall
            
        }
        print(女神["年"])
        
        
        var str1 = ""
        print(str1);
    let (a, b, c) = ("dashu", "dashu1", "dashu2")
        if(str1.isEmpty){
            assert(str1.isEmpty, "lalalal");
            str1 = "qeqweqwe";
            
            var 古诗 = "锄禾日当午汗滴禾下土"
            
            古诗 = "曾经沧海难为水"
            
            var guci = "riluodidjaoid"
            var x = 古诗 + guci
            print(x)
            print("\(古诗.characters.count)\(角标)")
            
            
            let name2 = "周佳兴"
            
            let name1 = "周佳兴"
            
            var age = 10
            
            age = 15;
            
            print(name1, name2, age);
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

