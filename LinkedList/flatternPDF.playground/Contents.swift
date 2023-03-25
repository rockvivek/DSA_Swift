import UIKit
import PDFKit

func flattenPDF(pdfURL: URL, outputURL: URL) {
    // Load the PDF document
    guard let pdfDocument = PDFDocument(url: pdfURL) else {
        print("Failed to load PDF document")
        return
    }
    
    // Iterate through the pages of the PDF document
    for i in 0 ..< pdfDocument.pageCount {
        guard let page = pdfDocument.page(at: i) else {
            print("Failed to get page \(i)")
            continue
        }
        
        // Flatten the annotations on the page
        let annotations = page.annotations
        for annotation in annotations {
            page.removeAnnotation(annotation)
            page.addAnnotation(annotation)
        }
    }
    
    // Save the flattened PDF document to the output URL
    pdfDocument.write(to: outputURL)
}

let pdfpath = "file:///Users/iphtech41/Downloads/abc.pdf"

let outputpath = "file:///Users/iphtech41/Downloads/pdffile/abc.pdf"


func call() {
    
    guard let pdfURL = URL(string: pdfpath), let outputURL = URL(string: outputpath) else{
        print("URL is not created")
        return
    }
    
    flattenPDF(pdfURL: pdfURL, outputURL: outputURL)
}

call()
