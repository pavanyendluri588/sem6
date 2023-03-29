ifelse(5==6,print("true"),print("false"))
a=c(5,6,7,8,9,10,11,5,13,14,15)
ifelse(a%%2==0,"even","odd")

c1=0;c2=0
for (val in a){
     if(val%%2==0){
          c1=c1+1
          }else{c2=c2+1}
}
c1
c2

x=1:10
for (x in x){
     if (x ==5){
          break
     }
     print(x)
}



x=1:10
for (x in x){
     if (x ==5){
          break
     }
     print(x)
}


x=1:10
for (x in x){
     if (x ==5){
          break
     }
     print(x)
}


x=1:10
for (x in x){
     if (x %in%5:7){
          next
     }
     print(x)
}