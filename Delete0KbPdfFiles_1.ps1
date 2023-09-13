# Define the directory path where you want to search for PDF files

$directoryPath = "C:\Liquid\output\Invoices"

# Get a list of PDF files with a size of 0KB in the specified directory

$zeroSizePDFFiles = Get-ChildItem -Path $directoryPath -Filter *.pdf | Where-Object { $_.Length -eq 0 } 

# Check if there are any 0KB PDF files to delete

if ($zeroSizePDFFiles.Count -gt 0) {


        # Delete each 0KB PDF file

        foreach ($file in $zeroSizePDFFiles) {

            Remove-Item -Path $file.FullName -Force

           }
            }
