@echo off
cd /d "%~dp0"
call ".venv\Scripts\activate.bat"
mtd-subtitle-web --model "OpenMOSS-Team/MOSS-Transcribe-Diarize" --host 127.0.0.1 --port 7860
pause