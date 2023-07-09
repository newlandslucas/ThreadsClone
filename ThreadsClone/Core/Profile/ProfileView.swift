//
//  ProfileView.swift
//  ThreadsClone
//
//  Created by Lucas Newlands on 07/07/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 25) {
                
                //MARK: Header
                HStack(spacing: 15) {
                    
                    Button {
                        print("clicou")
                    } label: {
                        Image(systemName: "globe")
                             .font(.system(size: 25))
                    }

                  
                    Spacer()
                    
                    Button {
                        print("clicou")
                    } label: {
                        Image(systemName: "camera")
                            .font(.system(size: 25))
                    }
                    
                    Button {
                        print("clicou")
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .font(.system(size: 28))
                    }

                    
                
                    //MARK: SubHeader
                    

                }
                
                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Lucas Newlands")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text("lucasnewlands_")
                            .font(.subheadline)
                        
                        Text("Software Engineer at IBM")
                            .font(.system(size: 16))
                    }
                    
                    Spacer()
                    
                    Image("userProfile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .cornerRadius(30)
                }
                
                HStack {
                    Button {
                        print("clicou!")
                    } label: {
                        VStack(alignment: .center){
                            Text("Editar Perfil")
                                .font(.footnote)
                                .foregroundColor(.gray)

                        }
                        .frame(width: 170, height: 40)
                        .cornerRadius(18)
                        .border(Color.black, width: 0.2)
                        
                    }
                    
                    Button {
                        print("clicou!")
                    } label: {
                        VStack(alignment: .center){
                            Text("Compartilhar Perfil")
                                .font(.footnote)
                                .foregroundColor(.gray)
                        }
                        .frame(width: 170, height: 40)
                        .cornerRadius(18)
                        .border(Color.black, width: 0.2)
                    }
                }
                Divider()
                Spacer()
            }
            .padding()
        }
        .foregroundColor(.black)
    }
}

#Preview {
    ProfileView()
}
