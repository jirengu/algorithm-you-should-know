# 选择排序

## 原理解析

挑出数组第1个数字，后面其它所有数字比较，如果后面的某个数字比第一个数组小，则交换位置。一轮排序后，数组最小值放在第一位。

第二轮，挑出数组第2个数字，继续上面的逻辑...

## 范例演示

以下表格里，红色表示选中的待排序的数字，蓝色表示最终排好的数字。

** 第一轮：**

1. 选择第一数 10 和 第二个数34， 进行比较， 其中 10 < 34， 二者不需要交换
2. 选择第一个数 10 和 第三个数21， 进行比较， 其中 10 < 21, 二者不需要交换
2. 选择第一个数 10 和 第四个数 47， 进行比较， 其中 10 < 47, 二者需不要交换
2. 选择第一个数 10 和 第五个数 3， 进行比较， 其中 10 > 3, 二者需要交换
2. 选择第一个数 3 和 第六个数 28， 进行比较， 其中 3 < 28, 二者不需要交换


** 第二轮：**

忽略已经排列好的第一个数, 从第二个数开始， 按照刚刚的逻辑再次排序

...

<table style="text-align: center">
  <tr>
    <td rowspan=6>第一轮</td>
    <td style="color:red">10</td>
    <td style="color:red">34</td>
    <td>21</td>
    <td>47</td>
    <td>3</td>
    <td>28</td>
  </tr>
  <tr>
    <td style="color:red">10</td>
    <td>34</td>
    <td style="color:red">21</td>
    <td>47</td>
    <td>3</td>
    <td>28</td>
  </tr>
  <tr>
    <td style="color:red">10</td>
    <td>34</td>
    <td>21</td>
    <td style="color:red">47</td>
    <td>3</td>
    <td>28</td>
  </tr>
  <tr>
    <td style="color:red">10</td>
    <td>34</td>
    <td>21</td>
    <td>47</td>
    <td style="color:red">3</td>
    <td>28</td>
  </tr>
  <tr>
    <td style="color:red">3</td>
    <td>34</td>
    <td>21</td>
    <td>47</td>
    <td>10</td>
    <td style="color:red">28</td>
  </tr>
  <tr>
    <td style="color:blue">3</td>
    <td>34</td>
    <td>21</td>
    <td>47</td>
    <td>10</td>
    <td>28</td>
  </tr>

 
  <tr>
    <td rowspan=5>第二轮</td>
    <td style="color:blue">3</td>
    <td style="color:red">34</td>
    <td style="color:red">21</td>
    <td>47</td>
    <td>10</td>
    <td>28</td>
  </tr>

  <tr>
    <td style="color:blue">3</td>
    <td style="color:red">21</td>
    <td>34</td>
    <td style="color:red">47</td>
    <td>10</td>
    <td>28</td>
  </tr>
  <tr>
    <td style="color:blue">3</td>
    <td style="color:red">21</td>
    <td>34</td>
    <td>47</td>
    <td style="color:red">10</td>
    <td>28</td>
  </tr>
  <tr>
    <td style="color:blue">3</td>
    <td style="color:red">10</td>
    <td>34</td>
    <td>47</td>
    <td>21</td>
    <td style="color:red">28</td>
  </tr>

  <tr>
    <td style="color:blue">3</td>
    <td style="color:blue">10</td>
    <td>34</td>
    <td>47</td>
    <td>21</td>
    <td>28</td>
  </tr>





  <tr>
    <td rowspan=4>第三轮</td>
    <td style="color:blue">3</td>
    <td style="color:blue">10</td>
    <td style="color:red">34</td>
    <td style="color:red">47</td>
    <td>21</td>
    <td>28</td>
  </tr>
  <tr>
    <td style="color:blue">3</td>
    <td style="color:blue">10</td>
    <td style="color:red">34</td>
    <td>47</td>
    <td style="color:red">21</td>
    <td>28</td>
  </tr>
  <tr>
    <td style="color:blue">3</td>
    <td style="color:blue">10</td>
    <td style="color:red">21</td>
    <td>47</td>
    <td>34</td>
    <td style="color:red">28</td>
  </tr>
  <tr>
    <td style="color:blue">3</td>
    <td style="color:blue">10</td>
    <td style="color:blue">21</td>
    <td>47</td>
    <td>34</td>
    <td>28</td>
  </tr>

  

  <tr>
    <td rowspan=3>第四轮</td>
    <td style="color:blue">3</td>
    <td style="color:blue">10</td>
    <td style="color:blue">21</td>
    <td style="color:red">47</td>
    <td style="color:red">34</td>
    <td>28</td>
  </tr>
  <tr>
    <td style="color:blue">3</td>
    <td style="color:blue">10</td>
    <td style="color:blue">21</td>
    <td style="color:red">34</td>
    <td>47</td>
    <td style="color:red">28</td>
  </tr>
  <tr>
    <td style="color:blue">3</td>
    <td style="color:blue">10</td>
    <td style="color:blue">21</td>
    <td style="color:blue">28</td>
    <td>47</td>
    <td>34</td>
  </tr>

  <tr>
    <td rowspan=2>第五轮</td>
    <td style="color:blue">3</td>
    <td style="color:blue">10</td>
    <td style="color:blue">21</td>
    <td style="color:blue">28</td>
    <td style="color:red">47</td>
    <td style="color:red">34</td>
  </tr>
  <tr>
    <td style="color:blue">3</td>
    <td style="color:blue">10</td>
    <td style="color:blue">21</td>
    <td style="color:blue">28</td>
    <td style="color:blue">34</td>
    <td>47</td>
  </tr>
</table>

## 实现方式

```javascript
function bubleSort(arr) {
  for(let i = 0; i < arr.length-1 /*i代表轮数*/; i++) {
    for(let j = 0; j < arr.length - 1 - i /*j代表当前轮选中的元素下标*/; j++) {
      if(arr[j] > arr[j+1]) {
        [ arr[j], arr[j+1] ] = [ arr[j+1], arr[j] ] /*交换元素*/
      }
    }
    //console.log(arr)
  }
}

var arr = [10, 34, 21, 47, 3, 28]
bubleSort(arr)
console.log(arr)

```

## 效率测试
下面我们测试排序性能。以下的代码中，randomArr 函数会生成一个随机数组， 数组长度默认是100， 最大值默认值是1000。
console.time 和 console.end 用来记录排序时间。


```javascript

let arr = randomArr(10000, 100)
console.time('bubleSort')
bubleSort(arr)
console.timeEnd('bubleSort')


function randomArr( arrLen = 100, maxValue = 1000 ) {
  let arr = []
  for(let i = 0; i < arrLen; i++) {
    arr[i] = Math.floor((maxValue+1)*Math.random())
  }
  return arr
}

function bubleSort(arr) {
  for(let i = 0; i < arr.length-1; i++) {
    for(let j = 0; j < arr.length - 1 - i; j++) {
      if(arr[j] > arr[j+1]) {
        [ arr[j], arr[j+1] ] = [ arr[j+1], arr[j] ] /*交换元素*/
      }
    }
  }
}


```
经浏览器测试，对于长度为10000的数组，排序约需要340ms， 对于长度为100000的数组，排序约需要
36690ms。可以看出，数组长度增加10倍，排序时间约增加100倍

## 复杂度分析
时间复杂度(可以理解为排序的次数)计算： (n-1) + (n-2) + ... + 1 = n*(1 + (n-1))/2，所以时间复杂度为 O(n^2) ，和上面的测试基本一致





