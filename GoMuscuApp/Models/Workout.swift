import Foundation

struct Workout: Identifiable {
    
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        formatter.locale = Locale(identifier: "fr_FR")
        formatter.timeZone = TimeZone.current
        return formatter
    }()
    
    var id = UUID()
    var activity: Activity
    var startDate: Date?
    var endDate: Date?
    
    func getCaloriesForLength() -> Double {
        return Double(activity.calparHour) * ((getLength() / 60) / 60)
    }
    
    func getLength() -> TimeInterval {
        if let startDate = startDate {
            return endDate?.timeIntervalSince(startDate) ?? 0
        } else {
            return 0
        }
    }
    
    static func latestWorkout(from workouts: [Workout]) -> Workout? {

        // Check if workouts not empty
        if((workouts.count) != 0){
            
            guard let firstWorkout = workouts.first else {
                return nil
            }

            // Use reduce to find the workout with the latest start date
            return workouts.dropFirst().reduce(firstWorkout) { (latestWorkout, currentWorkout) -> Workout in
                if let latestStartDate = latestWorkout.startDate,
                   let currentStartDate = currentWorkout.startDate {
                    return latestStartDate > currentStartDate ? latestWorkout : currentWorkout
                } else {
                    // If either start date is nil, choose the one that is not nil
                    return latestWorkout.startDate != nil ? latestWorkout : currentWorkout
                }
            }
        }
        return Workout.sampleData[0]
    }
}

extension Workout {
    static let sampleData: [Workout] = [
        Workout(
            activity: Activity.sampleData[0],
            startDate: dateFormatter.date(from: "2024-01-12T16:00:00") ?? Date(),
            endDate: dateFormatter.date(from: "2024-01-12T16:30:20") ?? Date()
        ),
    ]
}
