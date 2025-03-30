# StikJIT  

A **work-in-progress** on-device JIT enabler for iOS, powered by [`idevice`](https://github.com/jkcoxson/idevice).  

## Requirements  
The [SideStore VPN](https://github.com/SideStore/SideStore/releases/download/0.1.1/SideStore.conf) is required. This allows the device to connect to itself.  

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
