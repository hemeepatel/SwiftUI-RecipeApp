import SwiftUI

struct LoginPage: View {
    @StateObject var loginData: LoginPageModel = LoginPageModel()
    @State private var navigateToMainTab = false
    
    var body: some View {
        VStack {
            Image("Spoon")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 1250, height: 70)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 15) {
                    
                    Image("SignInLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 1250, height: 260)
                    
                    CustomTextField(icon: "envelope", title: "Email", hint: "Enter email here", value: $loginData.email, showPassword: .constant(false))
                        .padding(.top, 10)
                    
                    CustomTextField(icon: "lock", title: "Password", hint: "Enter password", value: $loginData.password, showPassword: $loginData.showPassword)
                        .padding(.top, 0)
                    
                    if loginData.registerUser {
                        CustomTextField(icon: "lock", title: "Re-Enter Password", hint: "Re-enter password", value: $loginData.reenterPassword, showPassword: $loginData.showreenterPassword)
                            .padding(.top, 10)
                    }
                    
                    
                    //Login Button
                    Button(action: {
                        navigateToMainTab = true
                    }) {
                        Text("Login")
                            .bold()
                            .frame(width: 300, height: 50)
                            .background(Color.buttonColor.opacity(0.8))
                            .foregroundColor(.white)
                            .cornerRadius(25)
                        }
                    
                    //Register Button
                    
                    
                }
                .padding()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.backgroundColor)
    }
}


struct CustomTextField: View {
    var icon: String
    var title: String
    var hint: String
    @Binding var value: String
    @Binding var showPassword: Bool
    
    var body: some View {
        VStack(spacing: 10) {
            Label {
                Text(title)
                    .font(.system(size: 20))
            } icon: {
                Image(systemName: icon)
            }
            .foregroundColor(.white)
            
            HStack {
                if title.contains("Password") && !showPassword {
                    SecureField(hint, text: $value)
                        .font(.custom("AppFont", size: 24))
                } else {
                    TextField(hint, text: $value)
                        .font(.custom("AppFont", size: 24))
                }
                
                if title.contains("Password") {
                    Button(action: {
                        showPassword.toggle()
                    }) {
                        Text(showPassword ? "Hide" : "Show")
                            .font(.custom("AppFont", size: 14))
                            .foregroundColor(.white)
                    }
                    .padding(.trailing, 10)
                }
                
                
            }
            .frame(width: 300, height: 50)
            .background(Color.buttonColor.opacity(0.8))
            .foregroundColor(.white)
            .cornerRadius(25)
            .autocapitalization(.none)
            .padding(.horizontal, 10)
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
