import SwiftUI

struct ContentView: View {

    // 「Hello World」の表示・非表示を管理する
    @State private var isHelloVisible = false

    var body: some View {
        ZStack {

            // 画面全体の背景色
            Color.black
                .ignoresSafeArea()

            VStack {

                Spacer()

                // 起動時に表示する文字
                if isHelloVisible {

                    VStack {
                        Image(systemName: "iphone")
                            .font(.system(size: 70))
                            .foregroundStyle(.white)

                        Text("初めてのiOSアプリ")
                            .font(.system(size: 40))
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.center)
                    }
                    .transition(.opacity)
                }

                Spacer()

                // ボタンを押すと表示・非表示を切り替える
                Button("表示を切り替える") {
                    withAnimation {
                        isHelloVisible.toggle()
                    }
                }
                .font(.system(size: 45))
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 120)
                .background(.red)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(.horizontal)
                .padding(.bottom, 100)
            }
        }
    }
}

#Preview {
    ContentView()
}
