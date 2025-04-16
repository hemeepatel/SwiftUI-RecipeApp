import SwiftUI

struct CardStackView: View {
    var body: some View{
        ZStack {
            ForEach(0 ..< 10){ card in
                CardView()
            }
        }
    }
}

#Preview {
    CardStackView()
}
