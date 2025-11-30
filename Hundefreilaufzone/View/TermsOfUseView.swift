//
//  TermsOfUseView.swift
//  Hundefreilaufzone
//
//  Created by Goran Saric on 30.11.25.
//

import SwiftUI

struct TermsOfUseView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {

                // Title
                Text("Terms of Use")
                    .font(.title)
                    .bold()

                Text("Last updated: 30 November 2025")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                Group {
                    Text("1. Acceptance of Terms")
                        .font(.headline)

                    Text("""
                    By downloading or using Hundefreilaufzone (“the App”), you agree to be bound by these Terms of Use. If you do not agree to these terms, please discontinue use of the App.
                    """)
                }

                Group {
                    Text("2. Description of the App")
                        .font(.headline)

                    Text("""
                    Hundefreilaufzone is an informational app designed to help users discover dog playgrounds, view details, and browse a map interface. The App is for informational and convenience purposes only.
                    """)
                }

                Group {
                    Text("3. No Liability for Information Accuracy")
                        .font(.headline)

                    Text("""
                    While we strive to provide accurate and up-to-date information, the App may contain inaccuracies, outdated details, or incomplete information regarding playground locations and conditions.

                    We make no guarantees about the accuracy, reliability, or completeness of the information provided.
                    """)
                }

                Group {
                    Text("4. User Responsibilities")
                        .font(.headline)

                    Text("""
                    You agree to use the App responsibly and in accordance with local laws and regulations. You are solely responsible for decisions made based on the information displayed in the App.
                    """)
                }

                Group {
                    Text("5. No Location Tracking")
                        .font(.headline)

                    Text("""
                    The App does not access or track your personal location. Map content is provided solely for browsing dog playground locations.
                    """)
                }

                Group {
                    Text("6. Intellectual Property")
                        .font(.headline)

                    Text("""
                    All content in the App — including UI design, graphics, icons, data presentation, and general layout — is owned by the developer (Goran Saric). You may not copy, distribute, modify, or reuse any part of the App without permission.
                    """)
                }

                Group {
                    Text("7. Third-Party Services")
                        .font(.headline)

                    Text("""
                    The App uses Apple MapKit to display map content. By using the App, you also agree to Apple’s terms and privacy policies.
                    """)
                }

                Group {
                    Text("8. Limitation of Liability")
                        .font(.headline)

                    Text("""
                    To the maximum extent permitted by law, we are not liable for any damages, losses, injuries, or issues that arise from:
                    • Using or not being able to use the App  
                    • Relying on information displayed in the App  
                    • Technical issues or App malfunctions  
                    • Inaccurate or outdated playground data
                    """)
                }

                Group {
                    Text("9. Modifications to the App or Terms")
                        .font(.headline)

                    Text("""
                    We may update or modify the App or these Terms at any time. Continued use of the App after modifications indicates acceptance of the updated Terms.
                    """)
                }

                Group {
                    Text("10. Termination")
                        .font(.headline)

                    Text("""
                    We reserve the right to discontinue or restrict access to the App at any time without prior notice.
                    """)
                }

                Group {
                    Text("11. Governing Law")
                        .font(.headline)

                    Text("""
                    These Terms are governed by the laws of Austria. Any disputes shall be handled in the competent courts of Austria.
                    """)
                }

                Group {
                    Text("12. Contact Information")
                        .font(.headline)

                    Text("""
                    For questions about these Terms of Use, you may contact the developer at:

                    Developer: Goran Saric  
                    Email: goransaric92@gmail.com  
                    """)
                }
            }
            .padding()
        }
        .navigationTitle("Terms of Use")
        .navigationBarTitleDisplayMode(.inline)
        .textSelection(.enabled)
    }
}

#Preview {
    NavigationStack {
        TermsOfUseView()
    }
}

