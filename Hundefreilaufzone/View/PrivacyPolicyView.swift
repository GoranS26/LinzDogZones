//
//  PrivacyPolicyView.swift
//  Hundefreilaufzone
//
//  Created by Goran Saric on 30.11.25.
//

import SwiftUI

struct PrivacyPolicyView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {

                // Title
                Text("Privacy Policy")
                    .font(.title)
                    .bold()

                Text("Last updated: 30 November 2025")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                Group {
                    Text("1. Introduction")
                        .font(.headline)

                    Text("""
                    Hundefreilaufzone (“Linz Dog Zones”) is developed by Goran Saric. This Privacy Policy explains how the App operates, what data it handles, and your rights as a user.
                    """)
                }

                Group {
                    Text("2. Information We Do Not Collect")
                        .font(.headline)

                    Text("""
                    The App does not collect, store, or process any personal information. In particular, we do not collect:
                    """)
                    Text("• Names, email addresses, phone numbers or postal addresses\n• Photos, contacts or media\n• Device identifiers or advertising identifiers\n• Payment or financial information\n• Usage analytics, tracking data, or IP addresses\n• Social account or login information")
                }

                Group {
                    Text("3. Information the App Uses")
                        .font(.headline)

                    Text("a) Map Data (non-personal)")
                        .font(.subheadline)
                        .bold()

                    Text("""
                    The App uses Apple MapKit to display dog playground locations and map content. This interaction does not collect or store your personal location on our behalf, and we do not receive or store any location data on our own servers.
                    """)

                    Text("b) Local Preferences")
                        .font(.subheadline)
                        .bold()

                    Text("""
                    The App stores simple settings locally on your device using Apple’s UserDefaults, such as:
                    • Dark mode preference
                    • Playground filter settings (e.g. water, fenced)
                    • Onboarding or introductory screen completion

                    These preferences are stored only on your device and are not transmitted to us or to third parties.
                    """)
                }

                Group {
                    Text("4. Data Storage")
                        .font(.headline)

                    Text("""
                    We do not operate any backend server for user data. All data used by the App (such as your settings) remains on your device. If you delete the App from your device, all locally stored preferences will be removed.
                    """)
                }

                Group {
                    Text("5. Third-Party Services")
                        .font(.headline)

                    Text("""
                    The App uses Apple MapKit solely for the purpose of displaying maps and dog playground locations. Apple may process certain technical or diagnostic information in accordance with its own privacy policies.
                    """)
                    Text("For more information on Apple’s privacy practices, please visit:")
                    Text("https://www.apple.com/legal/privacy/")
                        .foregroundStyle(.blue)
                        .underline()
                }

                Group {
                    Text("6. Children’s Privacy")
                        .font(.headline)

                    Text("""
                    The App does not collect personal data from any users, including children. Because we do not collect personal information, the App is inherently aligned with privacy regulations such as COPPA and GDPR regarding data collection.
                    """)
                }

                Group {
                    Text("7. Security")
                        .font(.headline)

                    Text("""
                    Since the App does not collect or store personal information on servers, there is no risk of unauthorized access or data breaches from our side. Your device and operating system may still apply their own security and privacy protections.
                    """)
                }

                Group {
                    Text("8. Your Rights")
                        .font(.headline)

                    Text("""
                    Because we do not collect, store, or process personal information, there is no personal data for you to access, modify, or delete. You may, however, delete the App at any time to remove all locally stored preferences from your device.
                    """)
                }

                Group {
                    Text("9. Changes to This Privacy Policy")
                        .font(.headline)

                    Text("""
                    We may update this Privacy Policy from time to time to reflect changes in the App or applicable laws. Any updates will be made available inside the App and/or via the distribution platform (such as the App Store).
                    """)
                }

                Group {
                    Text("10. Contact")
                        .font(.headline)

                    Text("""
                    If you have any questions or concerns about this Privacy Policy or the App, you can contact the developer at:
                    """)

                    Text("Developer: Goran Saric\nEmail: goransaric92@gmail.com")
                }
            }
            .padding()
        }
        .navigationTitle("Privacy Policy")
        .navigationBarTitleDisplayMode(.inline)
        .textSelection(.enabled)
    }
}

#Preview {
    NavigationStack {
        PrivacyPolicyView()
    }
}
