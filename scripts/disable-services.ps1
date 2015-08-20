#   Description:
# This script disables unwanted Windows services. If you do not want to disable
# certain services comment out the corresponding lines below.

$services = @(
    "HomeGroupListener" # HomeGroup Listener
    "HomeGroupProvider" # HomeGroup Provider
    "MapsBroker" # Downloaded Maps Manager
    "NetTcpPortSharing" # Net.Tcp Port Sharing Service
    "RemoteAccess" # Routing and Remote Access
    "RemoteRegistry" # Remote Registry
    "SharedAccess" # Internet Connection Sharing (ICS)
    "WbioSrvc" # Windows Biometric Service
    #"WlanSvc" # WLAN AutoConfig
    "XblAuthManager" # Xbox Live Auth Manager
    "XblGameSave" # Xbox Live Game Save Service
    "XboxNetApiSvc" # Xbox Live Networking Service
    "dmwappushservice" # WAP Push Message Routing Service
    "lfsvc" # Geolocation Service  
    #"wscsvc" # Windows Security Center Service
)

foreach ($service in $services) {
    Get-Service -Name $service | Set-Service -StartupType Disabled
}
