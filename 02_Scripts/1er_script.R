usethis::use_git()

x <- 4
y <- 6

x+y

usethis::create_github_token()

gitcreds::gitcreds_set()

#| eval: false
usethis::use_github()
1

x-y

m <- 67
n <- 60
m+n
m-n

datos_1 <- read.table("C:/Users/paoga/Downloads/GSE285949.top.table.tsv", header = TRUE, fill = TRUE)
head(datos_1)

class(datos_1$P.Value)
datos_1$P.Value <- as.numeric(datos_1$P.Value)
datos_1$logFC <- as.numeric(datos_1$logFC)

plot(datos_1$logFC, -log10(datos_1$P.Value),
     xlab = "log Fold Change",
     ylab = "-log10(p-value)",
     main = "Volcano plot: Plaquetas vs Megacariocitos",
     pch = 20)

significativos <- datos_1$P.Value < 0.05 & abs(datos_1$logFC) > 1
points(datos_1$logFC[significativos], -log10(datos_1$P.Value[significativos]),
       col = "pink", pch = 20)

