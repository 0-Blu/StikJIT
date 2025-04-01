import SwiftUI

struct CustomErrorView: View {
    var title: String
    var message: String
    var onDismiss: () -> Void
    var showButton: Bool = true
    @State private var opacity: Double = 0
    @State private var scale: CGFloat = 0.8
    var primaryButtonText: String = "OK"
    var secondaryButtonText: String = "Cancel"
    var onPrimaryButtonTap: (() -> Void)? = nil
    var onSecondaryButtonTap: (() -> Void)? = nil
    var showSecondaryButton: Bool = false
    
    var body: some View {
        ZStack {
            // Background overlay
            Color.black.opacity(0.6)
                .edgesIgnoringSafeArea(.all)
                .opacity(opacity)
                .onTapGesture {
                    if showButton {
                        dismissWithAnimation()
                    }
                }
            
            // Card itself
            VStack(spacing: 12) {
                // Error icon
                Image(systemName: "exclamationmark.triangle.fill")
                    .font(.system(size: 32))
                    .foregroundColor(.red.opacity(0.9))
                    .padding(.top, 8)
                
                // Title - slightly smaller
                Text(title)
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                // Divider
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.white.opacity(0.2))
                    .padding(.horizontal, 12)
                
                // Message 
                Text(message)
                    .font(.system(size: 15, design: .rounded))
                    .foregroundColor(.white.opacity(0.9))
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.horizontal, 12)
                
                
                // Dismiss button (only shown when showButton is true)
                if showButton {
                    VStack(spacing: 6) {
                        Button(action: {
                            dismissWithAnimation()
                            onPrimaryButtonTap?() // Call primary action if provided
                        }) {
                            Text(primaryButtonText)
                                .font(.system(size: 16, weight: .semibold, design: .rounded))
                                .foregroundColor(.black)
                                .frame(height: 38)
                                .frame(maxWidth: .infinity)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.white)
                                )
                        }
                        
                        if showSecondaryButton {
                            Button(action: {
                                dismissWithAnimation()
                                onSecondaryButtonTap?() // Call secondary action if provided
                            }) {
                                Text(secondaryButtonText)
                                    .font(.system(size: 16, weight: .medium, design: .rounded))
                                    .foregroundColor(.white)
                                    .frame(height: 38)
                                    .frame(maxWidth: .infinity)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.gray.opacity(0.3))
                                    )
                            }
                        }
                    }
                    .padding(.horizontal, 12)
                    .padding(.bottom, 12)
                    .padding(.top, 6)
                } else {
                    Spacer()
                        .frame(height: 12)
                }
            }
            // Made the card smaller overall
            .frame(width: min(UIScreen.main.bounds.width - 80, 300))
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color(UIColor.systemGray6).opacity(0.95))
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.white.opacity(0.2), lineWidth: 1)
                    )
            )
            .shadow(color: Color.black.opacity(0.25), radius: 16, x: 0, y: 8)
            .scaleEffect(scale)
            .opacity(opacity)
        }
        .onAppear {
            // Made animation faster (0.25s instead of 0.4s)
            withAnimation(.spring(response: 0.25, dampingFraction: 0.7)) {
                opacity = 1
                scale = 1
            }
        }
    }
    
    private func dismissWithAnimation() {
        // Made dismiss animation faster (0.15s instead of 0.2s)
        withAnimation(.easeOut(duration: 0.15)) {
            opacity = 0
            scale = 0.8
        }
        
        // Delay the actual dismissal to allow the animation to complete
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
            onDismiss()
        }
    }
} 