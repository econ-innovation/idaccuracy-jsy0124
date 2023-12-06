#第一题
library(readr)
getwd()
setwd("C:/Users/20990/Downloads/Aminer")

data <- data.frame()

for (i in list.files()) {
  print(i)
  file_path <- file.path("C:/Users/20990/Downloads/Aminer", i)
  temp <- read_csv(i)  #假设为.csv文件
  data <- rbind(data, temp)
}

names(data)

print(data)

#第二题
#使用lapply函数，因为lapply函数可应用于list、data.frame数据集。
file_list <- list.files()

data_list <- lapply(file_list, function(file) {
  file_path <- file.path("C:/Users/20990/Downloads/Aminer", file)
  read_csv(file_path)
})

data <- do.call(rbind, data_list)  #这一步不理解原理，也不了解函数

print(data)

#第三题
