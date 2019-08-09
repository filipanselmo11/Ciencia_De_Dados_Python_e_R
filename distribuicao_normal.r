# x = rnorm(100)
# qqnorm(x)
# qqline(x)
# shapiro.test(x)
# pnorm()

# media = 8 dp = 2, objeto < 6 ?
pnorm(6, 8, 2)
# objeto > 6 ?
pnorm(6, 8, 2, lower.tail = FALSE) # > que # forma 1
# forma  2
1 - pnorm(6, 8, 2)

# < 6 ou > 10 ?
pnorm(6, 8, 2) + pnorm(10, 8, 2, lower.tail = F)

# qual a chance de se tirar um objeto < 10 kq e > 8 kg
pnorm(10, 8, 2) - pnorm(8, 8, 2)

# Diagrama de normalidade
x = rnorm(100) # funcao para gerar dados normalmente distribuidos
x

qqnorm(x)
qqline(x)
shapiro.test(x)
