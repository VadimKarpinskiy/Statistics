#Vadim Karpinskiy: Zadanie domowe 1
{
print (paste("1. Mediana opadów w rejestrowanych miastach to:", median(precip)))

print (paste("2. Odchylenie standardowe opadów wynosi:", sd(precip)))

print(paste("3. W nastêpuj¹cych miastach opady s¹ równe œredniej: ",
            names(precip[precip == mean(precip)])))

{
print("4. W nastêpuj¹cych miastach opady ró¿ni¹ siê od mediany nie wiêcej ni¿ 0.5 cala:")
print(names(precip[abs(precip - median(precip)) <= 0.5]))
}

print( paste("5. Opady s¹ najmniejsze w:", names(sort(precip)[1]) ))


{
counter <- 0
srednia <- mean(precip)
for (val in precip) {
  if (val > srednia){
    counter <- counter + 1
  }
}
print(paste("6. Liczba miast, w których opady s¹ powy¿ej œredniej wynosi:",counter))
}

{
print("7. W nastêpuj¹cych miastach opady le¿¹ powy¿ej górnego kwartyla:")
print(names(precip[precip > fivenum(precip)[4]]))
}


{
print("8. W nastêpuj¹cych miastach opady le¿¹ poni¿ej dolnego kwartyla:")
print(names(precip[precip < fivenum(precip)[2]]))
}

}
