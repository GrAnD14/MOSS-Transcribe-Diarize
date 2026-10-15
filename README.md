# MOSS-Transcribe-Diarize: Windows Setup Guide

This repository is based on the original [OpenMOSS/MOSS-Transcribe-Diarize](https://github.com/OpenMOSS/MOSS-Transcribe-Diarize) project and includes Windows usability improvements.

The original model and upstream codebase belong to their respective authors and contributors. See `LICENSE` for the applicable license terms.

## 1. Requirements

Before starting, install:

- **Git for Windows:** https://git-scm.com/download/win
- **Python 3.12:** https://www.python.org/downloads/release/python-31210/

During Python installation, enable the option to add Python to `PATH`.

You will also need an internet connection to download the model files on the first run.

A compatible NVIDIA GPU is recommended for faster inference. CPU inference may be considerably slower.

## 2. Clone the Repository

Open PowerShell or Windows Terminal and run:

```powershell
git clone https://github.com/GrAnD14/MOSS-Transcribe-Diarize.git
cd MOSS-Transcribe-Diarize
```

Alternatively, clone the original upstream repository if you do not need the Windows-specific changes.

## 3. Create a Virtual Environment

Run these commands from the project directory:

```powershell
py -3.12 -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
```

If PowerShell blocks activation of the virtual environment, you can use Command Prompt instead:

```bat
.venv\Scripts\activate.bat
```

## 4. Install Dependencies

With the virtual environment activated, run:

```powershell
python -m pip install -e ".[torch-runtime]"
```

This installs the project and its declared PyTorch runtime dependencies.

If PyTorch does not detect your NVIDIA GPU, check the official installation instructions for a compatible CUDA-enabled PyTorch build:

https://pytorch.org/get-started/locally/

## 5. Launch the Web Interface

Run:

```powershell
mtd-subtitle-web --model "OpenMOSS-Team/MOSS-Transcribe-Diarize" --host 127.0.0.1 --port 7860
```

Wait for the server to initialize. The first launch may download the model weights and other required files.

Open the following address in your browser:

http://127.0.0.1:7860

Upload an audio or video file, run transcription, review the resulting segments, and export the available subtitle formats.

Keep the terminal window open while the application is running. Press `Ctrl+C` in the terminal to stop the server.

## 6. Troubleshooting

**Python is not found**

Check the installation with:

```powershell
py -0p
```

Make sure Python 3.12 is installed.

**The virtual environment cannot be activated**

Use Command Prompt and run:

```bat
.venv\Scripts\activate.bat
```

**The application cannot find the model**

Check your internet connection and ensure the model ID is spelled correctly:

`OpenMOSS-Team/MOSS-Transcribe-Diarize`

**CUDA or GPU errors**

Verify that your NVIDIA driver is installed and that PyTorch detects CUDA. Refer to the official PyTorch installation guide.

**Port 7860 is already in use**

Stop the other application using that port or change the port in the launch command.

## 7. Upstream Project

For the original documentation, model details, research, and evaluation results, visit:

https://github.com/OpenMOSS/MOSS-Transcribe-Diarize

This repository's Windows-specific changes are intended to simplify setup and launching. They do not imply authorship of the original model, model weights, or upstream codebase.
