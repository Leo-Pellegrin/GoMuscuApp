//
//  PopUpNewActivity.swift
//  GoMuscuApp
//
//  Created by Léo Pellegrin on 24/01/2024.
//

import SwiftUI

struct PopUpNewActivity: View {
    @Binding var isPopupNewActivity: Bool
    
    var body: some View {
        VStack {
           Text("Ceci est une fenêtre popup!")
               .font(.title)
               .padding()

           // Ajoutez le contenu supplémentaire de la fenêtre modale ici

           Button("Fermer") {
               // Fermer la fenêtre modale
               dismiss()
           }
           .padding()
       }
    }
    
    private func dismiss() {
        isPopupNewActivity = false
    }
}

#Preview {
    PopUpNewActivity(isPopupNewActivity: .constant(false))
}
