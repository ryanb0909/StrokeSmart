import SwiftUI

struct Medication: Identifiable, Codable {
    var id = UUID()
    var name: String
    var date: Date
    var recurrence: Recurrence?
}

enum Recurrence: String, CaseIterable, Codable, Identifiable {
    case daily, weekly, monthly
    var id: String { self.rawValue }
}

struct MedTrackerView: View {
    @State private var medicationName: String = "" 
    @State private var selectedDate = Date()
    @State private var selectedRecurrence: Recurrence? = nil
    @State private var medications: [Medication] = []
    
    init() {
        loadMedications()
    }
    
    var body: some View {
        VStack {
            Text("Medication")
                .font(.system(size: 42, weight: .bold))
                .padding(.top, 100)
                .foregroundColor(.white)
            
            Text("Tracker")
                .font(.system(size: 42, weight: .bold))
                .foregroundColor(.white)
            
            TextField("Enter medication name", text: $medicationName)
                .padding()
                .background(Color.white)
                .cornerRadius(8)
                .padding(.horizontal)
                .padding(.top, 20)
            
            DatePicker(
                "Select Date",
                selection: $selectedDate,
                displayedComponents: [.date]
            )
            .padding()
            .background(Color.white)
            .cornerRadius(8)
            .padding(.horizontal)
            .padding(.top, 20)
            
            Picker("Recurrence", selection: $selectedRecurrence) {
                Text("None").tag(nil as Recurrence?)
                ForEach(Recurrence.allCases) { recurrence in
                    Text(recurrence.rawValue.capitalized).tag(recurrence as Recurrence?)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal)
            .padding(.top, 20)
            
            Button(action: addMedication) {
                Text("Add Medication")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding(.top, 20)
            
            List {
                ForEach(groupedMedications.keys.sorted(), id: \.self) { date in
                    Section(header: Text(date, style: .date)) {
                        ForEach(groupedMedications[date]!) { medication in
                            HStack {
                                Text("\(medication.name) - \(medication.recurrence?.rawValue.capitalized ?? "No Recurrence")")
                                Spacer()
                                Button(action: {
                                    deleteMedication(medication)
                                }) {
                                    Image(systemName: "trash")
                                        .foregroundColor(.red)
                                }
                            }
                        }
                        .onDelete { indexSet in
                            indexSet.forEach { index in
                                deleteMedication(at: index, for: date)
                            }
                        }
                    }
                }
            }
            .padding(.top, 20)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red)
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: loadMedications)
    }
    
    private var groupedMedications: [Date: [Medication]] {
        Dictionary(grouping: medications) { medication in
            Calendar.current.startOfDay(for: medication.date)
        }
    }
    
    private func addMedication() {
        guard !medicationName.isEmpty else { return }
        
        let medication = Medication(name: medicationName, date: selectedDate, recurrence: selectedRecurrence)
        medications.append(medication)
        
        medicationName = ""
        selectedRecurrence = nil
        saveMedications()
    }
    
    private func saveMedications() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(medications) {
            UserDefaults.standard.set(encoded, forKey: "medications")
        }
    }
    
    private func loadMedications() {
        if let savedMedications = UserDefaults.standard.data(forKey: "medications") {
            let decoder = JSONDecoder()
            if let loadedMedications = try? decoder.decode([Medication].self, from: savedMedications) {
                medications = loadedMedications
            }
        }
    }
    
    // Function to delete medication from the list
    private func deleteMedication(_ medication: Medication) {
        if let index = medications.firstIndex(where: { $0.id == medication.id }) {
            medications.remove(at: index)
            saveMedications()
        }
    }
    
    private func deleteMedication(at index: Int, for date: Date) {
        let meds = groupedMedications[date]!
        let medication = meds[index]
        deleteMedication(medication)
    }
}
