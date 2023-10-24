//
//  ListBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Enes Sancar on 23.10.2023.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "banana", "orange", "watermelon"
    ]
    
    @State var veggies: [String] = [
        "tomato", "potato", "carrot "
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header: HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                        .font(.headline)
                        .foregroundColor(.orange)
                ) {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                        .listRowBackground(Color.blue)
                    }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
                }
            }
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton())
        }
        .accentColor(.red)
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
}

#Preview {
    ListBootcamp()
}
