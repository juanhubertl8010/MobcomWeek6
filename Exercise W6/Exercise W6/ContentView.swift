//
//  ContentView.swift
//  Exercise W6
//
//  Created by student on 25/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // Header and Profile Section
            ZStack(alignment: .bottom) {
                Rectangle()
                    .fill(Color.black)
                    .frame(height: 100)
                
                // Profile picture at the bottom center of the header
                Circle()
                    .fill(Color.white)
                    .frame(width: 100, height: 100)
                    .overlay(
                        Text("😀")
                            .font(.largeTitle)
                    )
                    .shadow(radius: 10)
                    .offset(y: 50)
            }
            .padding(.bottom, 50)
            
            // @ Arnoldy text
            Text("@ Arnoldy")
                .font(.headline)
                .foregroundColor(.gray)
                .padding(.top, 5)
            
            // Name section
            Text("Arnoldy Chafe")
                .font(.title2)
                .bold()
                .padding(.bottom, 5)
            
            // Location and Joined Date in one line
            HStack {
                Text("Bandung")
                    .foregroundColor(.blue)
                
                Text("|")
                    .foregroundColor(.gray)
                
                Text("Joined March 2023")
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
            .padding(.top, 5)
            
            // Follow, Message, and More buttons aligned in one row
            HStack {
                Button(action: {
                    // Follow action
                }) {
                    HStack {
                        Image(systemName: "person.fill")
                        Text("Follow")
                            .fontWeight(.bold)
                    }
                    .frame(width: 100, height: 40)
                    .foregroundColor(.black)
                    .background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                }
                
                Button(action: {
                    // Message action
                }) {
                    HStack {
                        Image(systemName: "message.fill") // Added a message icon
                        Text("Message")
                            .fontWeight(.bold)
                    }
                    .frame(width: 120, height: 40) // Increased the width
                    .foregroundColor(.black)
                    .background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                }
                
                Button(action: {
                    // More action
                }) {
                    HStack {
                        Image(systemName: "ellipsis")
                        Text("More")
                            .fontWeight(.bold)
                    }
                    .frame(width: 100, height: 40)
                    .foregroundColor(.black)
                    .background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                }
            }
            .padding(.top, 10)

            // Description text below the username
            Text("CEO System D, Because your satisfaction is everything & Standing out from the rest, and that's what we want you to be as well.")
                .font(.subheadline)
                .foregroundColor(.black)
                .padding()
                .multilineTextAlignment(.center)

            // Section Divider above Information
            Rectangle()
                .fill(Color.gray)
                .frame(height: 10)
                .cornerRadius(10)
                .padding(.top, 10)
            
            // Information Title aligned to the left
            HStack {
                Text("Information")
                    .bold()
                Spacer()
            }
            .padding(.leading)
            .padding(.top, 5)
     
            // Information Section with reduced spacing
            VStack(alignment: .leading, spacing: 2) {
                HStack {
                    Image(systemName: "globe")
                    Text("Website")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("Arnoldy.com")
                        .foregroundColor(.black)
                }
                HStack {
                    Image(systemName: "envelope")
                    Text("Email")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("Hello@ dalahreza.com")
                        .foregroundColor(.black)
                }
                HStack {
                    Image(systemName: "phone")
                    Text("Phone")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("+62 517 218 92 00")
                        .foregroundColor(.black)
                }
                HStack {
                    Image(systemName: "calendar")
                    Text("Joined")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("26 March 2023")
                        .foregroundColor(.black)
                }
            }
            .padding()

            // Section Divider below Information
            Rectangle()
                .fill(Color.gray)
                .frame(height: 2)
                .cornerRadius(10)

            // Footer Section with Tags aligned to the left
            VStack(alignment: .leading) {
                HStack {
                    TagView(tagText: "UI Designer")
                    TagView(tagText: "UX Designer")
                    TagView(tagText: "Design System")
                }
                HStack {
                    TagView(tagText: "Product")
                    TagView(tagText: "Successful")
                }
            }
            .padding(.top)
            .padding(.leading)
        }
        .padding()
    }
}

// Helper View for Tags
struct TagView: View {
    var tagText: String
    
    var body: some View {
        Text(tagText)
            .fontWeight(.bold)
            .padding(8)
            .background(Color.gray.opacity(0.2))
            .foregroundColor(.black)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 1)
            )
            .padding(.horizontal, 5)
    }
}

#Preview {
    ContentView()
}
