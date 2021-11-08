### Exercise Week 1

### Author: Ahmad Ichsan Baihaqi
### Email: ahmadichsanbaihaqi@gmail.com

# Soal 1: Print out integers which are multiples of 3 from 1 to 22.
# (Print out bilangan bulat yang merupakan kelipatan 3 dari 1 sampai 22).
# Ekspektasi jawaban: Ketika kode kalian di-run, muncul angka-angka: 3, 6, 9, 12, 15, 18, 21.
# Gunakan looping.

firstQuestion = function() {
  startInt = 1
  endInt = 22
  
  getDividedByThree = function(start, end) {
    for (x in start:end) {
      if (x %% 3 == 0) {
        print(x)
      }
    }
  }
  
  getDividedByThree(startInt, endInt)
}

firstQuestion()

# =========================================================================
# Soal 2: Buat sebuah function di R untuk mengecek apakah sebuah angka
# merupakan bilangan prima atau bukan.
# Ekspektasi jawaban: misal fungsi Anda bernama prime_check.
# Ketika kita jalankan prime_check(5), maka outputnya adalah ‘5 is a Prime number’.
# Fungsi ini harus bisa berlaku untuk input apa pun.
# Clue: Pengecekan bilangan prima menggunakan looping dan modulo.

# Bilangan prima adalah bilangan yang hanya dapat habis dibagi oleh angka 1 dan bilangan itu sendiri
# Dimulai dari angka 2

secondQuestion = function(parameter) {
  input = parameter
  
  isPrime = function(number) {
    if (number <= 1) {
      return (FALSE)
    }
    
    if (number == 2 | number == 3) {
      return (TRUE)
    }
    
    limit = number - 1

    for (x in 2:limit) {
      numberModulo = number %% x

      if (numberModulo == 0) {
        return (FALSE)
      }
    }
    
    return (TRUE)
  }
  
  isItPrime = isPrime(input)
  
  message = paste(input, "is a Prime number")

  if (!isItPrime) {
    message = paste(input, "is not a Prime number")
  }
  
  print(message)
}

secondQuestion(21)
secondQuestion(29)
