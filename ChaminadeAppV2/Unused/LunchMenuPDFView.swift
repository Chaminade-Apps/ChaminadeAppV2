//
//  LunchMenuPDF.swift
//  ChaminadeAppV2
//
//  Created by Anthony Tast on 6/3/24.
//

//import SwiftUI
//import PDFKit
//import Combine
//
//struct LunchMenuPDFView: View {
//    var monthNumber = Int(Calendar.current.component(.month, from: Date()))
//
//    var body: some View {
//        PDFImageView(pdfURLString: //"https://chaminade.lessings.com/menus/2024/\(monthNumber)/menu-chaminade.pdf")
//                    .frame(width: 300, height: 400)
//    }
//}
//
//struct PDFImageView: View {
//    @State private var pdfImage: UIImage? = nil
//    @State private var cancellable: AnyCancellable?
//
//    let pdfURLString: String
//
//    var body: some View {
//        Group {
//            if let pdfImage = pdfImage {
//                Image(uiImage: pdfImage)
//                    .resizable()
//                    .scaledToFit()
//            } else {
//                ProgressView()
//                    .onAppear(perform: loadPDF)
//            }
//        }
//    }
//
//    private func loadPDF() {
//        guard let url = URL(string: pdfURLString) else { return }
//
//        cancellable = URLSession.shared.dataTaskPublisher(for: url)
//            .map { data, _ in data }
//            .catch { _ in Just(Data()) }
//            .sink(receiveCompletion: { _ in }, receiveValue: { data in
//                if let pdfDocument = PDFDocument(data: data),
//                   let page = pdfDocument.page(at: 0) {
//                    self.pdfImage = self.imageFromPDFPage(page: page)
//                }
//            })
//    }
//
//    private func imageFromPDFPage(page: PDFPage) -> UIImage? {
//        let pageRect = page.bounds(for: .mediaBox)
//        let renderer = UIGraphicsImageRenderer(size: pageRect.size)
//        return renderer.image { ctx in
//            UIColor.white.set()
//            ctx.fill(pageRect)
//            ctx.cgContext.translateBy(x: 0.0, y: pageRect.size.height)
//            ctx.cgContext.scaleBy(x: 1.0, y: -1.0)
//            page.draw(with: .mediaBox, to: ctx.cgContext)
//        }
//    }
//}
//
//
