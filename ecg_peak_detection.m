% Step 1: Simulate ECG-like signal
Fs = 500;                             % Sampling frequency
t = 0:1/Fs:10;                        % 10 seconds duration
signal = 1.2*sin(2*pi*1.5*t) + 0.5*sin(2*pi*60*t) + 0.3*randn(size(t));  % Simulated ECG with noise

% Step 2: Plot Raw ECG
figure;
plot(t, signal);
title('Raw ECG Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Step 3: Bandpass Filter (0.5–40 Hz)
low_cutoff = 0.5;
high_cutoff = 40;
[b, a] = butter(2, [low_cutoff high_cutoff]/(Fs/2), 'bandpass');
filtered_ecg = filtfilt(b, a, signal);

% Step 4: Plot Filtered ECG
figure;
plot(t, filtered_ecg);
title('Filtered ECG Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Step 5: R-Peak Detection
[peaks, locs] = findpeaks(filtered_ecg, 'MinPeakHeight', 0.5, 'MinPeakDistance', 0.5*Fs);

% Step 6: Plot Detected Peaks
figure;
plot(t, filtered_ecg);
hold on;
plot(t(locs), peaks, 'ro');
title('Detected R-Peaks in ECG Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Step 7: Heart Rate Calculation
num_beats = length(locs);
duration_sec = t(end);
bpm = (num_beats / duration_sec) * 60;
fprintf('Estimated Heart Rate: %.2f BPM\n', bpm);
