
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

Now navigate to "TODO"

# Remote Node Setup

## Wiring

<img src="assets/wiring.JPG" width=300>

## Timer Configuration via Resistor

<img src="assets/timer_resistor.JPG" width=300>

## Remote Node Measurement Cycle

<img src="assets/remote_on.JPG" width=300>

Video of a successful power-up and shut-down is [here](
https://photos.app.goo.gl/qXKK1zMYpoje4MXd6). Below is an explanation of the various elements of the power-up and shut-down sequence.


### Remote Node Bootup

Immediately after turning the power 'on', you'll see a green light on the timer chip.  This will stay on while the remote node is making measurements and transmitting dta.

Simultaneously, you'll also notice that the red power light on the Feather will turn on, and stay on steadily for several seconds, indicating successful bootup.

### Soil Moisture Measurement

The Feather will then attempt to measure the soil moisture sensor.  If it is successful, the red light will blink three times, quickly. 

### Acknowledgement from Gateway, and Shutdown

Once the soil moisture measurement is made, the Feather will attempt to transmit data to the Gateway. If the Feather receives an acknowledgement that data has been received by the Gateway, it will then turn itself off -- so you'll see the green light on the timer chip turn off.

If the Gateway is out of range, or is not functioning properly, the green light will remain on.  It will flicker quickly once the timer 'resets' at the interval specified by the resistor connected to it.

# Checking for Successful Data Flow

## On the Gateway

## On FarmOS

(Note about battery level)

# Testing Remote Login to Gateway

# Remote Node Enclosures

# References

- Gateway docs
- Arduino Libraries




