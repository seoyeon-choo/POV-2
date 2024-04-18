//
//  SwiftUIView.swift
//  POV
//
//  Created by 추서연 on 4/16/24.
//

import SwiftUI
import PhotosUI

struct SwiftUIView: View {
    @State private var image: UIImage?
    @State private var isShowingImagePicker = false
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(height: 190)
                .foregroundColor(Color(#colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1)))
                .onTapGesture {
                    isShowingImagePicker = true
                }
                .overlay(
                    Group {
                        if let image = image {
                            Image(uiImage: image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        } else {
                            Text("Tap to add photo")
                                .foregroundColor(.black)
                                .font(.title)
                        }
                    }
                )
                .sheet(isPresented: $isShowingImagePicker) {
                    PhotoPicker(selectedImage: $image)
                }
        }
    }
}

struct PhotoPicker: UIViewControllerRepresentable {
    @Binding var selectedImage: UIImage?

    func makeUIViewController(context: Context) -> PHPickerViewController {
        var configuration = PHPickerConfiguration()
        configuration.filter = .images
        let picker = PHPickerViewController(configuration: configuration)
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }

    class Coordinator: PHPickerViewControllerDelegate {
        let parent: PhotoPicker

        init(parent: PhotoPicker) {
            self.parent = parent
        }

        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            parent.selectedImage = results.first?.itemProvider.loadObject(ofClass: UIImage.self) as? UIImage
            picker.dismiss(animated: true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
