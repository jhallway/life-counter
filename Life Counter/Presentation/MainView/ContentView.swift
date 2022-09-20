//
//  ContentView.swift
//  Life Counter
//
//  Created by John Hall on 8/31/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                PlayerView()
                Spacer()
            }
            HStack {
                Spacer()
                PlayerView()
                PlayerView()
                Spacer()
            }
            HStack {
                Spacer()
                PlayerView()
                Spacer()
            }
            Spacer()
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
