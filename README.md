<h6 align="center">
   <img width="225" height="225" src="/assets/StikJIT_Rounded_Corners.png" alt="Logo">
</h6>
   
<div align="center">
  <h1><b>StikJIT</b></h1>
  <p><b><i>~ A on-device JIT enabler for iOS versions 17.4+ (excluding iOS 18.4 beta 1), powered by <a href="https://github.com/jkcoxson/idevice">idevice</a> ~</i></b></p>
</div>


| <p align="center"><picture><source media="(prefers-color-scheme: dark)" srcset="https://github.com/neoarz/StikJIT/blob/main/assets/HomeScreen.PNG?raw=true"><source media="(prefers-color-scheme: light)" srcset="https://github.com/neoarz/StikJIT/blob/main/assets/HomeScreen.PNG?raw=true"><img alt="Sources" src="https://github.com/neoarz/StikJIT/blob/main/assets/HomeScreen.PNG?raw=true" width="200"></picture></p> | <p align="center"><picture><source media="(prefers-color-scheme: dark)" srcset="https://github.com/neoarz/StikJIT/blob/main/assets/AppList.PNG?raw=true"><source media="(prefers-color-scheme: light)" srcset="https://github.com/neoarz/StikJIT/blob/main/assets/AppList.PNG?raw=true"><img alt="Store" src="https://github.com/neoarz/StikJIT/blob/main/assets/AppList.PNG?raw=true" width="200"></picture></p> | <p align="center"><picture><source media="(prefers-color-scheme: dark)" srcset="https://github.com/neoarz/StikJIT/blob/main/assets/Settings.PNG?raw=true"><source media="(prefers-color-scheme: light)" srcset="https://github.com/neoarz/StikJIT/blob/main/assets/Settings.PNG?raw=true"><img alt="Library" src="https://github.com/neoarz/StikJIT/blob/main/assets/Settings.PNG?raw=true" width="200"></picture></p> | <p align="center"><picture><source media="(prefers-color-scheme: dark)" srcset="https://github.com/neoarz/StikJIT/blob/main/assets/JIT.gif?raw=true"><source media="(prefers-color-scheme: light)" srcset="https://github.com/neoarz/StikJIT/blob/main/assets/JIT.gif?raw=true"><img alt="Signing" src="https://github.com/neoarz/StikJIT/blob/main/assets/JIT.gif?raw=true" width="200"></picture></p> |
|:--:|:--:|:--:|:--:|
| **Home Screen** | **Apps List** | **Settings** | **JIT Under 10 Seconds** |

<br /><br />
  <a href="https://discord.gg/ZnNcrRT3M8">
    <img src="https://img.shields.io/badge/Discord-join%20us-7289DA?logo=discord&logoColor=white&style=for-the-badge&labelColor=23272A" />
  </a>
  <a href="https://github.com/0-Blu/StikJIT/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/0-Blu/StikJIT?label=License&color=5865F2&style=for-the-badge&labelColor=23272A" />
  </a>
  <a href="https://github.com/0-Blu/StikJIT/releases">
    <img src="https://img.shields.io/github/v/release/0-Blu/StikJIT?include_prereleases&label=Release&style=for-the-badge&labelColor=23272A" />
  </a>
  <a href="https://github.com/0-Blu/StikJIT/releases">
    <img src="https://img.shields.io/github/downloads/0-Blu/StikJIT/total?label=Downloads&style=for-the-badge&labelColor=23272A" />
  </a>
  <a href="https://github.com/0-Blu/StikJIT/stargazers">
    <img src="https://img.shields.io/github/stars/0-Blu/StikJIT?label=Stars&color=57F287&style=for-the-badge&labelColor=23272A" />
  </a>
  <br />

  
## Requirements  
[StossVPN](https://testflight.apple.com/join/hBUbg4ZJ) is required. This allows the device to connect to itself.  

## Features  
- On-device Just-In-Time (JIT) compilation for supported apps via [`idevice`](https://github.com/jkcoxson/idevice).  
- Seamless integration with [`em_proxy`](https://github.com/SideStore/em_proxy).  
- Native UI for managing JIT-enabling.  
- No data collection—ensuring full privacy. 

## Compiling Instructions  

1. **Clone the repository:**  
   ```sh
   git clone https://github.com/0-Blu/StikJIT.git
   cd StikJIT
   ```

2. **Open in Xcode:**  
   Open `StikJIT.xcodeproj` in Xcode.  

3. **Build and Run:**  
   - Connect your iOS device.  
   - Select your device in Xcode.  
   - Build and run the project.    

## License  
StikJIT is licensed under **AGPL-3.0**. See [`LICENSE`](LICENSE) for details.  
