# LMS & RLS Filters on Pynq Hardware
### Zach Neveu

# Usage
Python implementations reside in `Adaptive_Filters.ipynb`. A `pdf` version of the notebook is also available in `Adaptive_Filters.pdf` for reference. HLS implementations reside in the `hls/` folder in separate projects for each filter type. For HLS projects, filters are implemented as C++ classes, with a testbench for each project. The testbench outputs a CSV file with results data, which is imported into the jupyter notbook for analysis.

# Progress
+ LMS, NLMS, & RLS filters implemented and tested in Python
+ LMS & NLMS filters implemented and synthesized in HLS C++ code

# Still TODO
+ RLS filter HLS code
+ Create Overlays/drivers with stream input from Python
+ Create overlay/driver streaming from audio input jack on Pynq
+ Optimize efficiency
