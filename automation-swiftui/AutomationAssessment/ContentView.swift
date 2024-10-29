//
//  ContentView.swift
//  AutomationAssessment
//
//  Created by Nicholas Jones - Mobile iPlayer - Erbium on 29/10/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTag: Tag = Tag.initialDefault
    @State private var showingErrorAlert = false
    @State private var isLoading = false
    var headerView: some View {
        HStack {
            Text("Title")
                .font(.largeTitle)
            Spacer()
            Button {
                isLoading = true
                Task {
                    try await Task.sleep(nanoseconds: 2_000_000_000)
                    isLoading = false
                }
            } label: {
                Image(systemName: "arrow.clockwise.circle.fill")
            }
        }
    }

    var placeholderImage: some View {
        Image("placeholder")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .clipped()
            .padding(.vertical)
    }

    var tagSelector: some View {
        HStack {
            NavigationLink("Go to \(selectedTag.title)") {
                TagContentView(tag: selectedTag)
            }
            Spacer()
            Picker("Tag", selection: $selectedTag) {
                ForEach(Tag.allCases, id: \.self) {
                    Text($0.title)
                }
            }
        }
    }

    var relatedNews: some View {
        Button {
            showingErrorAlert = true
        } label: {
            Text("Related News")
                .padding()
                .font(.headline)
                .background(.red)
                .foregroundStyle(.white)
                .clipShape(Capsule())
        }
    }

    var loadingView: some View {
        ProgressView()
            .progressViewStyle(.circular)
            .controlSize(.extraLarge)
            .background(Color.white.opacity(0.25))
    }

    var body: some View {
        NavigationStack {
                VStack {
                    headerView
                    placeholderImage
                    tagSelector
                    Spacer()
                    relatedNews
                }
                .padding()
            .toolbar(content: {
                ToolbarItem(placement: .principal) {
                    Image("homeNavIcon")
                        .accessibilityLabel("BBC logo")
                        .accessibility(removeTraits: .isImage)
                        .accessibilityAddTraits(.isHeader)
                }
            })
        }
        .overlay {
            if isLoading {
                loadingView
            }
        }
        .alert("Something has gone wrong", isPresented: $showingErrorAlert) {
            Button("Ok", role: .cancel) {}
        }
    }
}

#Preview {
    ContentView()
}

enum Tag: Hashable, CaseIterable {
    case politics
    case uk
    case sport
    case tech
    case world

    static var initialDefault: Tag { return .politics }
    var title: String {
        switch self {
        case .politics:
            return "Politics"
        case .uk:
            return "UK"
        case .sport:
            return "Sport"
        case .tech:
            return "Technology"
        case .world:
            return "World"
        }
    }
}
