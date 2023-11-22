---
layout: post
title:  "Python Introduction - Indonesia"
tags: [python, coding, tutorial]
---

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
```bash
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
```bash
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
```bash
1
2
3
4
```

selain itu, angka `5` juga tidak muncul, karena memang by-default, behaviour fungsi `range()` adalah demikian