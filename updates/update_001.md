# Update #1

## Summary

<img src="assets/rak_router.JPG">

<img src="assets/gateway.png">

<img src="assets/garden_test.JPG">

<img src="assets/potted_test.JPG">

<img src="assets/probe_removal_replace_readjust.png">
**Figure 1**:  Probe initially in potted plant soil.  Removed probe for a few minutes (got “zero” readings for the soil moisture parameters, as expected), then replaced in soil.  Note that initial readings are “zero” for soil moisture parameters -- likely because potted plant soil was so dry and porous.  After readjusting the probe in the soil, readings returned to approximately their previous values. 

<img src="assets/vol_water_content.png">

<img src="assets/pulse_test_two.png">
<img src="assets/pulse_test_three.png">

## Remote Node

- Combined LoRa code with SDI-12 code
- Encoding parameters from lora node into byte payload, decoding on Gateway

## Gateway

- Remote connection setup to boot automatically 
- Internet connection allows wireless or ethernet cable
- If possible, easier to start with ethernet cable to test remote connectivity, set up parameters
Software set up on gateway to parse incoming lora packets and send to FarmOS, with parameter names

## Notes

Need to check the "parameter decoder divider" value, make sure that it is large enough to accommodate the largest anticipated value from the soil moisture sensor parameters.  Was using '500', and looks like the soil pore water EC exceeded this. 

## Next steps:

### Build remote node hardware setup for initial deployment
- Enclosure
- Battery

### Finalize initial version of gateway software
- Pull out wifi params into separate file
- Display IP address locally (on i2c display)

### Materials

- Acquire another gateway so can develop in parallel


