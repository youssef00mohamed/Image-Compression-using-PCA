#Load the libraries
library(jpeg)
getwd()

# Specify the path to "cat.jpg"
path_to_cat <- "cat.jpg"

# Read the JPEG image
cat <- readJPEG(path_to_cat)

# Convert it into its matrix representation
ncol(cat)
nrow(cat)
r <- cat[,,1]
g <- cat[,,2]
b <- cat[,,3]

#Applying PCA in each color values matrix
cat.r.pca <- prcomp(r, center = FALSE)
cat.g.pca <- prcomp(g, center = FALSE)
cat.b.pca <- prcomp(b, center = FALSE)

#Collect the PCA objects into a list
rgb.pca <- list(cat.r.pca, cat.g.pca, cat.b.pca)

#Creating loop that reconstructs the original image using the projections of the data
for (i in seq.int(3, round(nrow(cat) - 10), length.out = 10)) {
  pca.img <- sapply(rgb.pca, function(j) {
    compressed.img <- j$x[,1:i] %*% t(j$rotation[,1:i])
  }, simplify = 'array')
  writeJPEG(pca.img, paste('cat_compressed_', round(i,0), '_components.jpg', sep = ''))
}

#We can check the compression ratio for each iteration compared to the original image with a quick loop
original <- file.info('cat.jpg')$size / 1000
imgs <- dir('')

for (i in imgs) {
  full.path <- paste('', i, sep='')
  print(paste(i, ' size: ', file.info(full.path)$size / 1000, ' original: ', original, ' % diff: ', round((file.info(full.path)$size / 1000 - original) / original, 2) * 100, '%', sep = ''))
}