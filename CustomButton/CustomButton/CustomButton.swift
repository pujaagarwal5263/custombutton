//
//  MyButtonFile.swift
//  CustomButton
//
//  Created by Puja Agarwal on 23/12/22.
//

import Foundation
import SwiftUI

// Also created a showcase iOS app on: https://git.geekyants.com/puja/showcase-ios-app

public struct CustomButton{
    public struct MyButton: View{
        // ---- SIZE and VARIANT
        @State var isLoading:Bool = false
        @State var color: Color
        @State var colorscheme: String
        @State var btnsize: String = "Medium"
        @State var variant: String = "Solid"
        
        @State var btnPadding: Double = 10
        @State var varOpacity: Double = 1
        @State var disabled: Bool = false
        
        
        /// This is a button with different props so that user does not need to do addtional styling.
        /// - Parameters:
        ///   - btnsize: A field of String type which can be "Small", "Medium" or "Large". This will determine button size.
        ///   - variant: A field of String type which can be "Solid", "Subtle" or "Ghost". It defines different variants of button.
        ///   - isLoading: A boolean field which asks if the button is loading something or not.
        ///   - disabled: A boolean field which asks if button is enabled or disabled.
        ///   - colorscheme: A field of string type which can be "primary", "secondary" or "tertiary". It defined color of button.
    
        public init(btnsize: String, variant: String, isLoading:Bool, disabled: Bool, colorscheme: String){
     
            self.isLoading = isLoading
            self.colorscheme = colorscheme
            self.disabled = disabled
            self.variant = variant
            self.btnsize = btnsize
            
            if colorscheme == "primary" {
                self.color = Color.blue
            } else if colorscheme == "secondary" {
                self.color = Color.green
            } else if colorscheme == "tertiary" {
                self.color = Color.gray
            }else{
                self.color = Color.pink
            }

            if btnsize == "Small"{
                self.btnPadding = 5
            }else if btnsize == "Medium"{
                self.btnPadding = 10
            }else if btnsize == "Large"{
                self.btnPadding = 15
            }

            if variant == "Solid"{
                self.varOpacity = 1
            }else if variant == "Subtle"{
                self.varOpacity = 0.4
            } else if variant == "Ghost"{
                self.varOpacity = 0
            } else {
                self.varOpacity = 1
            }
        }
        
        
        public var body: some View{
            VStack{
                Button(action:{
                    //any action
                }, label: {
                    HStack(spacing: 10){
                        isLoading ? ProgressView() : nil
                        Text((isLoading) ? "Loading...": "Button")
                            .foregroundColor(Color.black)
                            .opacity((disabled) ? 0.3 : 1)
                    }
                }).padding(btnPadding)
                    .background(color.opacity(varOpacity))
                    .clipShape(Capsule())
            }
        }
    }
}
