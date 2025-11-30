//
//  SettingsView.swift
//  Hundefreilaufzone
//
//  Created by Goran Saric on 19.11.25.
//


import SwiftUI
import MapKit

struct SettingsView: View {

    @Bindable var vm: PlaygroundViewModel

    var body: some View {
        NavigationStack {
            ZStack {

                // Blurred Map Background
                Map(position: $vm.cameraPosition)
                    .allowsHitTesting(false)
                    .blur(radius: 12)
                    .opacity(0.85)
                    .scaleEffect(1.03)
                    .ignoresSafeArea()

                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {

                        Text("Theme")
                            .foregroundStyle(.primary)
                            .font(.system(size: 20, weight: .semibold))
                        GlassCard {
                            HStack {
                                Image(systemName: vm.isDarkModeEnabled
                                      ? "moon.stars.fill"
                                      : "sun.max.fill")
                                    .frame(width: 26, height: 26)
                                    .font(.system(size: 22))
                                    .foregroundStyle(vm.isDarkModeEnabled ? .black : .yellow)
                                    .scaleEffect(vm.isDarkModeEnabled ? 1.1 : 1.0)
                                    .rotationEffect(.degrees(vm.isDarkModeEnabled ? 0 : -90))
                                    .animation(.easeInOut(duration: 0.25), value: vm.isDarkModeEnabled)

                                Toggle(vm.isDarkModeEnabled ? "Lights off" : "Lights on",
                                       isOn: $vm.isDarkModeEnabled)
                                    .tint(.blue)
                            }
                        }

                        Text("Filters")
                            .foregroundStyle(.primary)
                            .font(.system(size: 20, weight: .semibold))
                        GlassCard {
                            HStack {
                                Image(systemName: "pedestrian.gate.closed")
                                
                                    .font(.system(size: 18))
                                    .foregroundStyle(vm.showFencedPlaygrounds ? .brown : .gray)
                                    .animation(
                                        .easeInOut(duration: 0.25),
                                               value: vm.showFencedPlaygrounds)

                                Toggle("Fence", isOn: $vm.showFencedPlaygrounds)
                                    .tint(.blue)
                            }
                        }

                        
                        GlassCard {
                            HStack {
                                Image(systemName: "drop.circle.fill")
                                    .font(.system(size: 22))
                                    .foregroundStyle(vm.showWaterPlaygrounds ? .blue : .gray)
                                    .animation(.easeInOut(duration: 0.25), value: vm.showWaterPlaygrounds)

                                Toggle("Water", isOn: $vm.showWaterPlaygrounds)
                                    .tint(.blue)
                            }
                        }

                        Text("About App")
                            .foregroundStyle(.primary)
                            .font(.system(size: 20, weight: .semibold))
                        GlassCard {
                            NavigationLink {
                                PrivacyPolicyView()
                                    .padding()
                            } label: {
                                HStack {
                                    Image(systemName: "lock.shield.fill")
                                        .font(.system(size: 22))
                                        .foregroundStyle(.green)

                                    Text("Privacy Policy")
                                        .foregroundColor(.primary)

                                    Spacer()

                                    Image(systemName: "chevron.right")
                                        .font(.system(size: 16))
                                       .foregroundStyle(vm.isDarkModeEnabled ? .white : .black)
                                }
                            }
                        }

                        // 🔥 TERMS OF USE CARD
                        GlassCard {
                            NavigationLink {
                                TermsOfUseView()
                                    .padding()
                            } label: {
                                HStack {
                                    Image(systemName: "doc.text.fill")
                                        .font(.system(size: 22))
                                        .foregroundStyle(.orange)

                                    Text("Terms of Use")
                                        .foregroundColor(.primary)

                                    Spacer()

                                    Image(systemName: "chevron.right")
                                        .font(.system(size: 16))
                                        .foregroundStyle(vm.isDarkModeEnabled ? .white : .black)
                                }
                            }
                        }

                        Text("Info")
                            .foregroundStyle(.primary)
                            .font(.system(size: 20, weight: .semibold))
                        GlassCard {
                            HStack {
                                Image(systemName: "info.circle.fill")
                                    .font(.system(size: 22))
                                    .foregroundStyle(.primary)

                                Text("Version")
                                Spacer()
                                Text(appVersion)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 20)
                    .padding(.bottom, 40)
                }
            }
            .navigationTitle("Settings")
        }
    }


    private var appVersion: String {
        Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "1.0"
    }
}


// MARK: - Reusable Glass Card Component
struct GlassCard<Content: View>: View {
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        content
            .padding(16)
            .glassEffect(.clear)
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
    }
}



#Preview {
    SettingsView(vm: PlaygroundViewModel())
}


