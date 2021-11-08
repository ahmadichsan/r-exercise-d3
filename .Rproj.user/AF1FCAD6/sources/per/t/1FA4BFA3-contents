### Homework Day 3

### Author: Ahmad Ichsan Baihaqi
### Email: ahmadichsanbaihaqi@gmail.com

## Start Construct/Defined Sample Data
userName = c("Ahmad", "Ichsan", "Baihaqi", "Mutiara", "Ayu")
birthPlace = c("Jakarta", "Jakarta", "Bandung", "Malang", "Surabaya")
birthDate = c(
  as.Date('1995/11/10'),
  as.Date('1990/02/17'),
  as.Date('1994/10/17'),
  as.Date('1999/02/20'),
  as.Date('1998/05/01')
)
lastShoppingDate = c(
  as.Date('2021/10/10'),
  as.Date('2021/01/10'),
  as.Date('2021/07/06'),
  as.Date('2021/08/08'),
  as.Date('2021/09/09')
)
shoppingAmountAvgPerMonth = c(100000, 50000, 20000, 275000, 400000)
totalTransactionPerMonth = c(10, 20, 3, 20, 18)
## End Construct/Defined Sample Data

## Start Create Data Frame
combinedData = data.frame(userName, birthPlace, birthDate, lastShoppingDate, shoppingAmountAvgPerMonth, totalTransactionPerMonth)
## End Create Data Frame

## Start Create Function to Get Loyal User
getLoyalUser = function(data) {
  minShoppingAmount = 100000
  minTotalTransaction = 5
  
  filterLoyalUser = combinedData$shoppingAmountAvgPerMonth > minShoppingAmount & combinedData$totalTransactionPerMonth > minTotalTransaction
  
  loyalUser = combinedData[filterLoyalUser,]
  
  formattedData = setNames(loyalUser, c(
    "Nama",
    "Tempat Lahir",
    "Tanggal Lahir",
    "Tanggal Terakhir Belanja",
    "Rata-rata Belanja per Bulan (Rp)",
    "Total Transaksi per Bulan"
  ))
  return(formattedData)
}
## End Create Function to Get Loyal User

## Main
getLoyalUser(combinedData)

## View Data in Table
View(getLoyalUser(combinedData))
