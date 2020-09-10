#install.packages("mongolite")

library(mongolit)

conexao = mongo(collection = "posts", db="dbmidias",
                    url-"mongodb://localhost")

dados = conexao$find()
class(dados)
dados = conexao$find('{"nome": "Jose"')