//
//  SelectImage.swift
//  Phase1
//
//  Created by Le Huu Chien on 16/12/2021.
//

import SwiftUI

struct SelectImage: View {
    @State var img = UIImage()
    @State var showImg = false
    var body: some View {
        VStack{
            Button {
            } label: {
                Image(uiImage: self.img)
                    .resizable()
                    .cornerRadius(50)
                    .frame(width: 200, height: 200)
                    .background(Color.black.opacity(0.2))
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .padding()
                    .onTapGesture {
                        showImg = true
                    }
                }
        }.sheet(isPresented: $showImg) {
            ImagePicker(sourceType: .photoLibrary, selectedImage: self.$img)
        }
        }
    }

struct ImagePicker: UIViewControllerRepresentable {
    @Environment(\.presentationMode) private var presentationMode
    var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @Binding var selectedImage: UIImage

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {

        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = false
        imagePicker.sourceType = sourceType
        imagePicker.delegate = context.coordinator

        return imagePicker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {

    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    final class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

        var parent: ImagePicker

        init(_ parent: ImagePicker) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

            if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                parent.selectedImage = image
            }

            parent.presentationMode.wrappedValue.dismiss()
        }

    }
}

struct SelectImage_Previews: PreviewProvider {
    static var previews: some View {
        SelectImage()
    }
}

