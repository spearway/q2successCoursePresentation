/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A squishable button that has a consistent look for use on a card
*/

import SwiftUI

struct CardActionButton: View {
    var labelKey: String
    var systemImage: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(systemName: systemImage)
                .font(Font.title.bold())
                .imageScale(.large)
                .frame(width: 44, height: 44)
                .padding()
                .contentShape(Rectangle())
        }
        .buttonStyle(SquishableButtonStyle(fadeOnPress: false))
        .accessibility(label: Text(LocalizedStringKey(labelKey), tableName: "ChemistryElements", bundle: .module))
    }
}

struct CardActionButton_Previews: PreviewProvider {
    static var previews: some View {
        CardActionButton(labelKey: "Close", systemImage: "xmark", action: {})
            .previewLayout(.sizeThatFits)
    }
}
