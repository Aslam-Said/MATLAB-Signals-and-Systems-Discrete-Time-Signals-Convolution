# MATLAB Signals and Systems Lab

## Overview
This project contains MATLAB scripts for exploring discrete-time sinusoidal signals and linear convolution. It uses plots and printed values to demonstrate signal periodicity, energy, and average power.

## Requirements
- MATLAB (or a compatible environment that supports `stem`, `subplot`, `conv`, and basic MATLAB syntax)

## Contents

### 1. Discrete-time sinusoidal signals for different values of `m`
- Sets `N = 12` and evaluates `sin(2*pi*m*n/N)` for `m = [4, 5, 7, 10]`.
- Plots each sequence over `n = 0` to `2N - 1` in a 2-by-2 subplot layout.
- Useful for comparing how changing `m` changes the sampled sinusoid.

### 2. Discrete-time sinusoidal signals for different values of `k`
- Evaluates `sin(omega*n)` for `k = [1, 2, 4, 6]`, where `omega = 2*pi*k/5`.
- Plots the sequences for `n = 0` to `9`.
- Useful for observing the effect of different discrete-time angular frequencies.

### 3. Energy and average power over one period
- Uses `x[n] = sin(2*pi*n/N)` with `N = 10` and `n = 0:9`.
- Calculates energy as `E = sum(x.^2)` and average power as `P = E/N`.

### 4. Energy and average power over a finite interval
- Uses the same sinusoid with `n = 0:12` (13 samples).
- Calculates energy over those samples and average power as `E/length(n)`.

### 5. Energy and average power over a long interval
- Evaluates the sinusoid over `n = 0:1005`.
- Calculates finite-interval energy and average power over all 1006 samples.
- For a nonzero periodic sinusoid, total energy grows as the observation interval grows, while average power approaches a stable value.

### 6. Linear convolution using shifted and padded sequences
- Uses `x = [1 2 3]` and `h = [9 8 5 32 5 3]`, with index arrays `nx` and `nh`.
- Builds the convolution result by scaling, shifting, and zero-padding copies of `x`, then adding them.
- Plots the result using the output index range `ny`.

### 7. Linear convolution using nested loops
- Computes the convolution sum directly:
  `y[n] = sum(x[k] * h[n-k])`, over valid sample indices.
- Stores the result in `ymat` and plots the samples.

### 8. Linear convolution using MATLAB's built-in function
- Computes the same operation with `conv(x, h)`.
- Plots the result with sample indices starting at zero.

## How to Run
1. Save the code in a `.m` file, for example `signals_systems_lab.m`.
2. Each section begins with `%%`, so MATLAB treats it as a separate code section.
3. Open the file in the MATLAB Editor.
4. Run the whole script or select a section and click **Run Section**.
5. Check the generated stem plots and the Command Window output for energy and power.

## Notes
- `stem` is used to display discrete-time sequences.
- `subplot(2, 2, i)` places four plots in one figure.
- `sum(x.^2)` calculates the sum of squared sample values.
- `conv(x, h)` returns the full linear convolution, whose length is `length(x) + length(h) - 1`.
- In the shifted-and-padded convolution section, `nx` and `nh` define the intended sample indices. The output vector `y` is calculated from the sample values; make sure the chosen index arrays match the intended alignment of the input sequences.

## Expected Convolution Result
For `x = [1 2 3]` and `h = [9 8 5 32 5 3]`, the linear convolution is:

```text
[9 26 46 51 111 49 19 9]
```

The energy and power values depend on the sample interval used in each section.
