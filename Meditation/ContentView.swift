

import SwiftUI

struct ContentView: View {
    var body: some View {

//            MeditationView(meditationVM: MeditationViewModel(meditation: Meditation.data))
        
            ChatbotViewmindmitra()
              
  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AudioManager())
    }
}
