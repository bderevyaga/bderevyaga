## Install MQTT

```sh
mkdir ~/mosquitto
mkdir ~/mosquitto/config
mkdir ~/mosquitto/data
mkdir ~/mosquitto/log
touch ~/mosquitto/config/mosquitto.conf
touch ~/mosquitto/config/passwd
```

```sh
docker run \
    --restart=always \
    --name mosquitto \
    -p 1883:1883 \
    -v ~/mosquitto/config:/mosquitto/config \
    -v ~/mosquitto/data:/mosquitto/data \
    -v ~/mosquitto/log:/mosquitto/log \
    -d eclipse-mosquitto:1.6.13
```

```sh
docker exec \
    -it mosquitto mosquitto_passwd \
    -c /mosquitto/config/passwd ***
```

```sh
nano ./mosquitto/config/mosquitto.conf
```

```txt
persistence true
persistence_location /mosquitto/data
allow_anonymous false
log_dest file /mosquitto/log/mosquitto.log
password_file /mosquitto/config/passwd
```

```sh
docker restart mosquitto
```

## C++
```cpp
#include <WiFi.h>
#include <PubSubClient.h>
#include <BLEDevice.h>
#include <BLEUtils.h>
#include <BLEScan.h>
#include <BLEAdvertisedDevice.h>

// WiFi
const char *ssid = "***"; // Enter your WiFi name
const char *password = "***";  // Enter WiFi password

// MQTT Broker
const char *mqtt_broker = "***";
const char *topic = "LYWSD02";
const char *mqtt_username = "***";
const char *mqtt_password = "***";
const int mqtt_port = 1883;

//// BL
int scanTime = 25; //In seconds
BLEScan* pBLEScan;

WiFiClient wifiClient;
PubSubClient client(wifiClient);

class MyAdvertisedDeviceCallbacks: public BLEAdvertisedDeviceCallbacks {
    void onResult(BLEAdvertisedDevice advertisedDevice) {
        if (!advertisedDevice.haveName() || advertisedDevice.getName().compare("LYWSD02"))
            return;

        Serial.printf("Advertised Device\n");

        std::string strServiceData = advertisedDevice.getServiceData();

        uint8_t cServiceData[20];
        
        strServiceData.copy((char *)cServiceData, strServiceData.length(), 0);
        client.publish(topic, cServiceData, strServiceData.length());
    }
};

void reconnect() {
   while (!client.connected()) {
        if (client.connect("ESP32Client", mqtt_username, mqtt_password)) {
           Serial.println("MQTT broker connected");
        } else {           
           delay(2000);
        }
    }
}

void setup() {
    Serial.begin(115200);
    delay(10);

    Serial.print("Connecting to ");
    Serial.println(ssid);

    WiFi.begin(ssid, password);

    while (WiFi.status() != WL_CONNECTED) {
        delay(500);
        Serial.print(".");
    }
    
    Serial.println("");
    Serial.println("WiFi connected");
    
    client.setServer(mqtt_broker, mqtt_port);
    
    BLEDevice::init("");
    pBLEScan = BLEDevice::getScan();
    pBLEScan->setAdvertisedDeviceCallbacks(new MyAdvertisedDeviceCallbacks());
    pBLEScan->setActiveScan(true);
    pBLEScan->setInterval(100);
    pBLEScan->setWindow(99);
}

void loop() {
    if (!client.connected()) {
      reconnect();
    }
    
    BLEScanResults foundDevices = pBLEScan->start(scanTime, false);
    pBLEScan->clearResults();
    
    delay(5000);
}
```

## Node.JS
```js
const mqtt = require('mqtt');

const client = mqtt.connect('***', {
    username: '***',
    password: '***'
});

client.on('connect', function () {
    client.subscribe('LYWSD02');
});

client.on('message', function (topic, message) {
    const code = message[12];

    if (code === 10) {
        const value = message[15];
        console.log(`B: ${value}`);
    } else if (code === 4) {
        const value = (message[15] | (message[16] << 8)) / 10;
        console.log(`T: ${value}`);
    } else if (code === 6) {
        const value = (message[15] | (message[16] << 8)) / 10;
        console.log(`H: ${value}`);
    }
});
```