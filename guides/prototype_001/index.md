
# Gateway Setup

## Setting up the Gateway WiFi

- Use a microSD card reader, you'll want to add a file called ```wpa_supplicant.conf``` in the ```/boot``` directory on the microSD card.

The contents of ```wpa_supplicant.conf``` should be as below (replacing the content in quotes with your WiFi network name and password (keep the quotation marks):

```
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
country=US

network={
     ssid="Your network name/SSID"
     psk="Your WPA/WPA2 security key"
     key_mgmt=WPA-PSK
}
```
Now you can insert the microSD card into the Gateway.

Here's a [video](https://www.youtube.com/watch?v=ZCZ4yxSHUO0) describing these steps.

## Inserting the MicroSD card for the Gateway

https://photos.app.goo.gl/qJAYhq7QZsEPrEFv9

## Power on the Gateway

Using the switch on the power cord.

## Getting the Gateway IP Address

Once the Gateway has been powered up for about 30-60 seconds, it should connect to the wifi network, and it should receive an IP address from your wifi router automatically.  We'll need this IP address in order to access the gateway configuration and look at incoming data. 

Finding the gateway's IP address is perhaps easiest using the 'Fing' smartphone app, which scans your local wifi network and gives you IP addressses of devices connected to your router.

Fing is available for [Android](https://play.google.com/store/apps/details?id=com.overlook.android.fing&hl=en_US) and [iPhone](https://apps.apple.com/us/app/fing-network-scanner/id430921107).  A brief guide to using it is [here](https://lifehacker.com/ios-android-app-of-the-week-fing-network-scanner-1825205516).

## Preparing to check for data on the Gateway

Noting the IP address of the gateway (via the above procedure), now use a browser on a PC connected to your wifi network to navigate to ```[gateway IP address]:8080```.

For example, if the IP address of your gateway was ```192.168.2.145```, you would enter ```192.168.2.145:8080``` into your browser navigation bar.

You should be presented with a page asking for username and password.

```username: admin```

```password: admin```

Here's a [video](
https://youtu.be/IIaKVIXJb1M) of logging into the Gateway and checking for incoming data: 

<a href="https://youtu.be/IIaKVIXJb1M"><img src="assets/gateway_video.png" width=300></a>

# Remote Node Setup

## Wiring

<img src="assets/wiring.JPG" width=300>

## Timer Configuration via Resistor

<img src="assets/timer_resistor.JPG" width=300>

## Remote Node Measurement Cycle

<img src="assets/remote_on.JPG" width=300>

Video of a successful power-up and shut-down is [here](
https://photos.app.goo.gl/qXKK1zMYpoje4MXd6). 


Below is an explanation of the various elements of the power-up and shut-down sequence.


### Successful sequence:

1. **Powerup**. Timer chip LED (green) is on.  Feather led (red) is on for a few seconds.

2. **Feather bootup**. Feather LED (red) blinks **once**, slowly.

3. **Soil moisture measurement**.  Feather LED (red) blinks **three times** if the Acclima soil moisture sensors are successfully read.

4. **Gateway acknowleges transmission, and Remote sleeps**.  The Feather now sends data to the Gateway.  If it receives a message from the Gateway indicating success, then the timer chip LED (green) will turn off, indicating that the remote node is now sleeping.

### Troubleshooting

- **Timer LED (green) does not turn off**. If all other Feather LED (red) patterns seem successful, but the Timer LED (green) does not turn off, this means that the Remote Node has not been able to send data to the Gateway.  This could be because the Gateway is out of range, or because the Gateway is malfunctioning.  

# Checking for Successful Data Flow

## On the Gateway


## On FarmOS

(Note about battery level)

# Testing Remote Login to Gateway

# Remote Node Enclosures

# References

- Gateway docs
- Arduino Libraries




