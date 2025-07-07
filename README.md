# ECG Peak Detection using MATLAB

This mini project focuses on detecting R-peaks from an ECG signal using MATLAB. The ECG signal is first simulated and then passed through a Butterworth bandpass filter to remove noise. After filtering, R-peaks are detected using built-in functions, and the heart rate is estimated based on the number of peaks per minute.

## Project Overview

- A synthetic ECG signal is generated with added noise to simulate a real-world scenario.
- A bandpass Butterworth filter (0.5–40 Hz) is used to reduce noise while preserving relevant frequency components.
- The filtered signal is processed using `findpeaks()` to locate the R-peaks.
- The time difference between R-peaks is used to estimate beats per minute (BPM).
- Three plots are generated to visualize the raw ECG, the filtered output, and the detected peaks.

## Files Included

- `ecg_peak_detection.m` – MATLAB script for simulation, filtering, peak detection, and plotting
- `raw_ecg.png` – Original noisy ECG signal
- `filtered_ecg.png` – Output after applying the bandpass filter
- `r_peaks_detected.png` – Filtered ECG with R-peaks marked

## Tools Used

- MATLAB (R2023 or later recommended)
- Signal Processing Toolbox

## Learning Outcomes

- Understanding of ECG signal characteristics
- Basics of biomedical signal filtering
- Practical experience with MATLAB functions like `butter`, `filtfilt`, and `findpeaks`
- Visualization of biomedical signals for analysis

## Author

Abinayavalli C  
Biomedical Engineering Student  
GitHub: [Abinayavalli26](https://github.com/Abinayavalli26)
LinkedIn: www.linkedin.com/in/abinayavalli-chellapandian-5a99b528a

