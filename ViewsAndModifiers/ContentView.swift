//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by mac on 16/04/2024.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct WaterMark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(WaterMark(text: text))
    }
}

struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(.blue)
            .clipShape(.capsule)
    }
}

struct ContentView: View {
    @State private var useText = false
    
    var body: some View {
        Color.blue
            .frame(width: 200, height: 100)
            .watermarked(with: "Sxmtee")
        
//        Text("Hello World")
//            .titleStyle()
        
//        CapsuleText(text: "God")
//        CapsuleText(text: "IS GOOD")
        
//        Button("Hello World") {
//            useText.toggle()
//        }
//        .foregroundColor(useText ? /*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/ : .red)
        
//        VStack {
//            Image(systemName: "pencil.circle")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
//        .background(.indigo)
    }
}

#Preview {
    ContentView()
}
