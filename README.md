# RGB Image Compression via PCA

This project demonstrates image compression using Principal Component Analysis (PCA) on the red, green, and blue color channels of an RGB image (`cat.jpg`). PCA is applied separately to each channel to reduce the image size while preserving visual fidelity to some extent.

## Usage

1. **Requirements:**
   - R programming language
   - `jpeg` library for image processing

2. **Instructions:**
   - Ensure your working directory contains the `cat.jpg` image file.
   - Run the R script `PCA.R`.

3. **Output:**
   - The script will generate a series of compressed images (`cat_compressed_X_components.jpg`), where X indicates the number of principal components used.
   - It calculates and displays the compression ratio for each iteration relative to the original image size.

## Files

- `image_compression_pca.R`: R script that performs PCA-based image compression on `cat.jpg`.
- `cat.jpg`: Sample RGB image used for compression.

## Notes

- The effectiveness of compression varies with the number of principal components used.
- This project serves as an educational example of PCA's application in image processing for compression purposes.

## Contribution

Contributions to this repository are welcome! If you have suggestions for improvements, additional analyses, or new datasets to explore, please feel free to open an issue or pull request. Ensure that your contributions align with the project's objectives and maintain code quality and documentation standards.

## License

This project is licensed under the [MIT License](LICENSE).
