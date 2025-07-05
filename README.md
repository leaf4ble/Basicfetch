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


## Add Whatthefetch to Your PATH

To run `Whatthefetch` from anywhere in your terminal, move the compiled executable to a directory in your `PATH`.

### For your user only

```bash
mkdir -p ~/.local/bin
mv Whatthefetch ~/.local/bin/
```

Make sure `~/.local/bin` is in your `PATH`. You can check with:

```bash
echo $PATH
```

If it’s not, add this line to your `~/.bashrc`, `~/.zshrc`, or equivalent:

```bash
export PATH="$HOME/.local/bin:$PATH"
```

Then reload your shell:

```bash
source ~/.bashrc
# or
source ~/.zshrc
```

### For all users (requires elevated priveleges, use `su`, `sudo`, `doas` or log in as root`

```bash
sudo mv Whatthefetch /usr/local/bin/
```

Now you can run:

```bash
Whatthefetch
```

from any directory!

---

## Contributing

Pull requests are welcome!  
For major changes, please open an issue first to discuss what you would like to change.

Currently looking for:
Literally anything. Improvements are welcome.
Someone who can improve the ASCII art for BSD. I half-assed the art.

---

## License

[GnuGPL v3](LICENSE)
