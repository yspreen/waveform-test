# waveform-test

<img width="464" alt="image" src="https://user-images.githubusercontent.com/12631527/201533067-54d14b35-fdfc-4914-8808-e950b77fb1f7.png">

```swift

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
  
```
