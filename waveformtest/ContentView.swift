//
//  ContentView.swift
//  waveformtest
//
//  Created by Nick on 11/13/22.
//

import SwiftUI
import DSWaveformImageViews

let path = Bundle.main.path(forResource: "tmp", ofType: "m4a")!
let url = URL(fileURLWithPath: path)

struct ContentView: View {
    var body: some View {
        VStack {
			clipped
			scaled
        }
        .padding()
		.frame(maxWidth: .infinity)
		.frame(maxHeight: .infinity)
		.background(Color.gray)
    }

	var clipped: some View {
		WaveformView(
			audioURL: url,
			configuration: .init(
				size: .init(width: 300, height: 50),
				style: .striped(.init(
					color: .blue, width: 3, lineCap: .round
				))
			)
		)
		.frame(width: 300, height: 50)
		.background(Color.white)
	}

	var scaled: some View {
		WaveformView(
			audioURL: url,
			configuration: .init(
				size: .init(width: 300, height: 50),
				style: .striped(.init(
					color: .blue, width: 3, lineCap: .round
				)),
				verticalScalingFactor: 0.5
			)
		)
		.frame(width: 300, height: 50)
		.background(Color.white)
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
