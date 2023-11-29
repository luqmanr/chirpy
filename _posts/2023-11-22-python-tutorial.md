---
layout: post
title:  "Python Introduction - Indonesia"
tags: [python, coding, tutorial]
updated: "2023-11-28"
---
# NOTE
tutorial ini masih akan diupdate, karena belum lengkap 😁

# Pre-requisites
1. Install python di komputer. Klik link berikut untuk tutorialnya
[Install python di Windows](https://www.digitalocean.com/community/tutorials/install-python-windows-10)

2. Install text/code editor. Saya sarankan pakai [VSCode](https://code.visualstudio.com/) untuk yang paling lazim/populer

3. Start coding!

# Data Types
Di dalam bahasa pemrograman, ada banyak data types. Yang di awal perlu kita kenali ada beberapa.

| Type      | Name |
|-----------|------|
| Text Type: | str  |
| Numeric Types: | int, float |
| Boolean Types: | bool |

# Data Structures
Kemudian ada juga konsep data structure, yang bisa kita umpamakan sebagai sebuah object yang berisikan data-data dari tabel di atas

| Type      | Name |
|-----------|------|
| Sequence: | list, tuple |
| Mapping/Hashmap: | dictionary |
| Set Types: | set |

# Loops
Loops, adalah sebuah mekanisme eksekusi program yang dilakukan berulang-ulang. Biasanya kita pakai untuk melakukan iterasi terhadap urutan data, atau kita ingin mengeksekusi sebuah program berkali-kali hingga kita mencapai kondisi tertentu.

# For Loops
Syntax:
```python
for <variable-name> in <data-to-iterate>:
    do_something()
```

example:
```python
for x in [1,2,3,4]:
    print(x)
```
output:
```
1
2
3
4
```

example:
```python
for x in range(5):
    print(x)
```
output:
```
0
1
2
3
4
```

perhatikan, iterasi tidak dimulai dari `1` ketika menggunakan `range()`.
ini dikarenakan dalam bahasa pemrograman, angka atau index dimulai dari angka `0`
sehingga jika kita tidak menyatakan index pertama untuk diiterasi, makan python by-default akan mulai dari `0`

jika kita ingin mulai dari 1, kita bisa tuliskan seperti berikut
```python
for x in range(1,5):
    print(x)
```
output:
```
1
2
3
4
```

selain itu, angka `5` juga tidak muncul, karena memang by-default, behaviour fungsi `range()` adalah demikian. Seringkali disebut `for <n> non-inclusive`

# While Loops
Syntax:
```python
while <condition>:
    do_something()
```

example:
```python
i = 0
while i < 5:
    print(i)
    i += 1
```
output:
```
0
1
2
3
4
```

# Variables, Functions, and Classes
Di dalam bahasa python, sebagaimana programming language lainnya, ada beberapa konsep untuk me-_define_ data dan perintah-perintah yang bisa kita gunakan di dalam code kita berkali-kali.

## Pertama ada `variables`

Jika mengingat pelajar matematika, seringkali kita bisa menyimpan sebuah angka kepada sebuah variabel, contoh:
```math
a = 1
b = 2
c = a+b

--> c = 1 + 2
--> c = 3
```

Konsep tersebut juga diterapkan dalam programming language python.

Untuk contoh yang paling sederhana, kita bisa menggunakan _built-in_ function di python, `print()`

example:
```python
a = 1
b = 2
c = a+b

print(a, b, c)
```
output:
```
1 2 3
```

## Kedua, Functions
Balik lagi, sama seperti konsep matematik, di programming language ada konsep function. Function adalah sebuah code/algoritma yang kita _define_, dimana kita memasukkan sebuah _input_, dan akan mengembalikan sebuah _output_.

Contoh, kalau dalam matematik, kita bisa menulis
```math
f(x) = mx + c
# x adalah input
# hasil akhir adalah (m*x) + c
```

example:
```math
m = 10
c = 3
x = 6
f(6) = 10*6 + 3
--> 63
```

Jika kita implementasi dalam python, syntax seperti ini
```python
def <function-name>(<input-arguments>):
    # do something here
    ...
    return <output>
```

example:
```python
def sum_num(a, b):
    c = a + b
    return c

n1 = sum_num(1, 2)
n2 = sum_num(5, 4)
print(n1)
print(n2)    
```
output:
```
3
9
```

## Terakhir, Classes
Untuk konsep yang ini, paling mudah untuk kita mengumpamakan jika kita ingin memodelkan sebuah _object_ ke dalam sebuah program/code.

Mengapa hal ini penting? Karena sebenarnya yang kita lakukan dalam menulis code, adalah mencoba untuk _mirror_ dunia nyata ke dalam bentuk code/program/digital. Bagaimana caranya kita bisa merepresentasikan sebuah keranjang belanja yang ingin di-_checkout_ oleh seorang _customer_ di aplikasi e-commerce. Atau bagaimana kita bisa mendengarkan music yang dimainkan live oleh sebuah band di negara yang berbeda, secara langsung lewat internet. 

Dalam python, ada konsep tersebut, yaitu Classes.

Syntax:
```python
class Name_of_Class:
    # write the methods & properties of this class here
    # it can contain functions (methods) & variables (properties)
    def __init__(self, <input-arguments>):
        self.<property-name> = <initial-value-of-property>

    def method_name(self, <input-arguments>):
        # do something here
        ...
        return <output>
    
```

Contoh, misalkan kita ingin punya sebuah objek _kucing_, dimana kucing bisa menngeong, dan rata-rata bisa lompat sebanyak 5 kali sebelum kucing menjadi lelah. Namun ternyata kita juga punya objek _anjing_, yang memiliki kemampuan menggonggong, dan rata-rata bisa lompat sebanyak 1 kali sebelum menjadi lelah.

example:
```python
class Kucing:
    def __init__(self, jumps=5):
        self.jumps = jumps
    def meow(self):
        print("meow")
    def jump(self):
        if self.jumps == 0:
            print("cat cannot jump anymore!")
            return
        print("cat jumps!")
        self.jumps -= 1

class Anjing:
    def __init__(self, jumps=1):
        self.jumps = jumps
    def gonggong(self):
        print("guk guk!")
    def jump(self):
        if self.jumps == 0:
            print("dog cannot jump anymore!")
            return
        print("dog jumps!")
        self.jumps -= 1

kucing = Kucing()
anjing = Anjing()

kucing.jump()
kucing.meow()
anjing.jump()
anjing.gonggong()
print(kucing.jumps)
print(anjing.jumps)
anjing.jump()

```
output:
```
cat jumps!
meow
dog jumps!
guk guk!
4
0
dog cannot jump anymore!
```

# Changelog

### 2023-11-28
- added `while loops`
- added `variables, functions, and classes`

### 2023-11-22
- init first version of tutorial