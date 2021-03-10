# Tag It

## How to Build
Close the project including submodules:
```bash
git clone --recurse-submodules https://github.com/102Rudy/tagit.git
```


### Backend
#### Linux & macOS
Install `vcpkg` dependencies:
```bash
./install_dependecies_linux.sh # or ./install_dependecies_macos.sh for macOS
```

Change directory to `backend` and run `build.sh`
```bash
cd backend
./build.sh
```

#### Windows
To be done

---

### Frontend

Change directory to `fronend` and run `build.sh`. It generates python files from .proto
```bash
cd frontend
./build.sh
```



## Project requirements

- CMake
- Python 3.5 or higher
- pip version 9.0.1 or highter
