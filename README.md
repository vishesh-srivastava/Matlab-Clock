# Vector-Grid Digital Clock (MATLAB Visualization)

This project visualizes the current system time in **HH:MM** format using a custom vector-based display built entirely in MATLAB. Instead of traditional seven-segment digits, the clock uses an **8×12 grid of circles**, where each circle can contain a directional vector arrow. These arrow patterns collectively form stylized digits from 0 to 9.

The clock layout is divided into four quadrants:

* **Top-left** — Hour (tens place)
* **Top-right** — Hour (units place)
* **Bottom-left** — Minute (tens place)
* **Bottom-right** — Minute (units place)

Digit formation is handled through predefined arrow-pattern maps. Each “pixel” of a digit is drawn using MATLAB’s `quiver` function, making the output scalable, clean, and visually distinctive.

---

## Features

* Procedurally generated **8×12 circular grid**
* Custom vector-arrow digits using directional codes
* Quadrant-based arrangement for HH:MM output
* Uses MATLAB’s `viscircles`, `quiver`, and clean axis formatting
* Modular code structure for readability and modification:

  * `center_grid()` — Generates coordinates for any quadrant grid
  * `draw()` — Renders a chosen digit using its arrow pattern
  * `line_draw()` — Draws the appropriate arrow for each pixel

---

## How It Works

1. The script generates an evenly spaced circle grid.
2. System time is read using MATLAB’s `clock()` function.
3. Hours and minutes are split into tens and units.
4. Each digit is drawn by mapping arrow codes to the correct grid points.
5. The final result is a fully vector-based digital clock displayed in a figure window.

---

## Running the Script

Clone the repository:

```bash
git clone https://github.com/vishesh-srivastava/Matlab-Clock.git
```

Open MATLAB, navigate to the project folder, and run:

```matlab
myclock
```

This will render the vector-grid clock showing the current **HH:MM** time.

---

## Requirements

* MATLAB (any modern version supporting `viscircles` and `quiver`)
* Image Processing Toolbox may be required depending on MATLAB version

---

## Future Improvements

* Real-time updating clock using MATLAB timers
* Color-coded digits or gradient themes
* Smooth transitions between digit changes
* Customizable grid sizes and arrow patterns
* Export as high-resolution images or animations

---

## License

This project is released under the MIT License. See the `LICENSE` file for details.
