# Whatthefetch

A basic <--- PUN!!!, cross-platform system information fetch script written in FreeBASIC.  
Displays OS, kernel, CPU, RAM, GPU, and storage info with Tux (for Linux) or Beastie (for BSD) ASCII art.

---

## Features

- Detects Linux and BSD kernels
- Shows:
  - OS
  - Kernel version
  - CPU model
  - RAM usage
  - GPU info
  - Storage usage
- Fun ASCII art for Linux (Tux)

---

## Requirements

- [FreeBASIC](https://www.freebasic.net/) compiler (`fbc`)
- Standard system utilities:
  - `uname`, `cat`, `grep`, `awk`, `lspci`, `df`, `free` (Linux)
  - `sysctl`, `pciconf`, `df` (BSD)

### Install FreeBASIC

**Arch Linux:**
```bash
sudo pacman -S freebasic
```

**Ubuntu/Debian:**
```bash
sudo apt install freebasic
```

**FreeBSD:**
```bash
pkg install freebasic
```

---

## Installation & Usage

1. **Clone the repository:**
    ```bash
    git clone https://github.com/yourusername/Whatthefetch.git
    cd Whatthefetch
    ```

2. **Compile the script:**
    ```bash
    fbc Whatthefetch.bas
    ```

3. **Run it:**
    ```bash
    ./Whatthefetch
    ```

---

## Contributing

Pull requests are welcome!  
For major changes, please open an issue first to discuss what you would like to change.

Currently looking for:
Literally anything. Improvements are welcome.
Someone who can improve the ASCII art for BSD. I half-assed the art.

---

## License

[MIT](LICENSE) (or your chosen license)
