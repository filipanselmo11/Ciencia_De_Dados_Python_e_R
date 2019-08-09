#chisq.test(x)

novela = matrix(c(19, 6, 43, 32), nrow=2, byrow=T)
fix(novela)
rownames(novela) = c("Masculino", "Feminino")
colnames(novela) = c("Assiste", "Nao-Assiste")
fix(novela)

chisq.test(novela)

tabela = matrix(c(41, 34, 18, 7), nrow=2, byrow=T)
fix(tabela)
rownames(tabela) = c("Masculino", "Feminino")
colnames(tabela) = c("Joga", "NaoJoga")
fix(tabela)

chisq.test(tabela)
