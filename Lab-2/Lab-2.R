#VADIM KARPINSKIY ZADANIE PROGRAMISTYCZNE

# Jako przyk³ad rozwa¿my wyci¹ganie kulek ró¿nego promieniu z worka, przy czym
# prawdopodobieñstwo wyci¹gania kulki o wiêkszym promieniu jest wiêksze.

# Wtedy nasze dane wejœciowe s¹ nastêpuj¹ce:
# Zdarzenie A - wylosowaliœmy drug¹ i pi¹t¹ kulki
# Zdarzenie B - wylosowaliœmy pierwsz¹, drug¹ i trzeci¹ kulki

# Czêœæ wspólna: wylosowaliœmy drug¹ kulkê
# Suma: wylosowaliœmy 1,2,3 i 5 kulki
# Dope³nienie oczywiste

{
{
  N <- 5
  space <- c(0.1, 0.4, 0.2, 0.2, 0.1)
  a <- c(2,5)
  b <- c(1,2,3)
}

#Funkcja event, tworz¹ca wektory logiczne, czyli zdarzenia
event <- function(action){
  base <- rep(FALSE,N)
  for (var in action)
    if (var > N) {
      return (rep(FALSE,N))
    } else {
      base[var] <- TRUE 
    }
  return (base)
}


#Funkcja wyznaczaj¹ca sumê dwóch zdarzeñ, zwraca ZDARZENIE jako wynik
union <- function(e1,e2) {
  res <- rep(FALSE,N)
  for (i in 1:N)
    if ((e1[i]) || (e2[i]))
      res[i] <- TRUE
  return (res)
}

#Funkcja okreœlaj¹ca czêœæ wspóln¹ dwóch zdarzeñ, zwraca ZDARZENIE jako wynik
intersect <- function(e1,e2) {
  res <- rep(FALSE,N)
  for (i in 1:N)
    if ((e1[i]) & (e2[i]))
      res[i] <- TRUE
  return (res)
}

#Funkcja znajduj¹ca dope³nienie podanego zdarzenia, zwraca ZDARZENIE jako wynik
complement <- function(e) {
  for (i in 1:N)
    if (e[i])
      e[i] <- FALSE
    else
      e[i] <- TRUE
  return (e)
}

prob <- function(space,event){
  probability <- 0
  for (i in 1:N)
    if (event[i])
      probability <- probability + space[i]
  return (probability)
}

}

#Testowanie

e1 <- event(a)
e2 <- event(b)

e3 <- complement(e1)
e4 <- complement(e2)

e5 <- intersect(e1,e2)
e6 <- union(e1,e2)

prob(space,e1)
prob(space,e2)

prob(space,e3)
prob(space,e4)

prob(space,e5)
prob(space,e6)