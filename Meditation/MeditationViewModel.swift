
import Foundation

final class MeditationViewModel: ObservableObject {
    private(set) var meditation: Meditation
    
    init(meditation: Meditation) {
        self.meditation = meditation
    }
}

struct Meditation {
    let id = UUID()
    let title: String
    let description: String
    let duration: TimeInterval
    let track: String
    let image: String
    
    static let data = Meditation(title: "Deep meditation music for positive energy", description: "Free your mind and drift into a state of utter tranquility.", duration: 900, track: "mindmatraaudio", image: "peace")
}
