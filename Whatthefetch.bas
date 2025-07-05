' FreeBASIC fetch script: Tux for Linux, Beastie head for BSD

Dim As String kernel, osname, cpu, ram, gpu, storage
Dim As Integer fh

' Detect kernel
Shell "uname -s > kernel.txt"
fh = FreeFile
Open "kernel.txt" For Input As #fh
Line Input #fh, kernel
Close #fh
Kill "kernel.txt"

' Print ASCII art
If LCase(kernel) = "linux" Then
    Print "        .--.     "
    Print "       |o_o |    "
    Print "       |:_/ |    "
    Print "      //   \\ \\   "
    Print "     (|     | )  "
    Print "    /'\\_   _/`\\ "
    Print "    """"""""   "
    Print "        Tux"
Elseif InStr(LCase(kernel), "bsd") Then
    Print "    .--. "
    Print "   (    )"
    Print "   '--'"
    Print "  (====)"
    Print "   Beastie"
Else
    Print "Unknown OS"
End If
Print

' OS Name
Shell "uname -o 2>/dev/null || uname -s > os.txt"
fh = FreeFile
Open "os.txt" For Input As #fh
Line Input #fh, osname
Close #fh
Kill "os.txt"
Print "OS: "; osname

' Kernel Version
Shell "uname -r > kernelver.txt"
fh = FreeFile
Open "kernelver.txt" For Input As #fh
Line Input #fh, kernel
Close #fh
Kill "kernelver.txt"
Print "Kernel: "; kernel

' CPU
Shell "cat /proc/cpuinfo 2>/dev/null | grep 'model name' | head -1 | cut -d: -f2 > cpu.txt || sysctl -n hw.model > cpu.txt"
fh = FreeFile
Open "cpu.txt" For Input As #fh
Line Input #fh, cpu
Close #fh
Kill "cpu.txt"
Print "CPU: "; cpu

' RAM
Shell "free -h 2>/dev/null | grep Mem | awk '{print $3""/""$2}' > ram.txt || sysctl hw.physmem | awk '{print $2/1024/1024 "" MB""}' > ram.txt"
fh = FreeFile
Open "ram.txt" For Input As #fh
Line Input #fh, ram
Close #fh
Kill "ram.txt"
Print "RAM: "; ram

' GPU
Shell "lspci 2>/dev/null | grep VGA | head -1 > gpu.txt || pciconf -lv 2>/dev/null | grep -A4 vga | grep 'device' | head -1 > gpu.txt"
fh = FreeFile
Open "gpu.txt" For Input As #fh
Line Input #fh, gpu
Close #fh
Kill "gpu.txt"
Print "GPU: "; gpu

' Storage
Shell "df -h / 2>/dev/null | awk 'NR==2{print $3""/""$2"" used (""$5"" full)""}' > storage.txt || df -h / | awk 'NR==2{print $3""/""$2"" used (""$5"" full)""}' > storage.txt"
fh = FreeFile
Open "storage.txt" For Input As #fh
Line Input #fh, storage
Close #fh
Kill "storage.txt"
Print "Storage: "; storage
