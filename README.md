# PCF Tile for Dynatrace Appmon Monitoring

This is the tile repository for generating the Dynatrace Appmon PCF tile. Tiles are the
installation package format used by Pivotal's Ops Manager to deploy add-on
software such as services and their brokers, buildpacks, or anything else
that needs to be installable in both public and private cloud deployments.

## How to Use PCF Dynatrace Appmon tile generator

0. Make sure you have tile cli installed

Check out the [tile-generator](https://github.com/cf-platform-eng/tile-generator.git) and follow instructions to install tile cli.

1. Check out PCF Dynatrace Appmon tile generator repo:

  ```bash
  git clone https://github.com/cf-platform-eng/dynatrace-appmon-tile.git
  ```

2. Check our Dynatrace Appmon service broker repo:

  ```bash
  git clone https://github.com/cf-platform-eng/dynatrace-service-broker.git
  ```

3. Build the service broker application

  ```bash
  cd dynatrace-service-broker
  mvn -Dmaven.test.skip=true clean install
  ```

4. Copy `dynatrace-service-broker.jar` to `dynatrace-appmon-tile/resources`

  ```bash
  cp target/dynatrace-service-broker.jar ../dynatrace-appmon-tile/resources
  ```

5. Edit `tile.yml` file and check path to `dynatrace-service-broker.jar` (more details see [tile-generator](https://github.com/cf-platform-eng/tile-generator.git))

  ```bash
  cd ../dynatrace-appmon-tile
  vi tile.yml
  ```

6. Build your tile
     ```bash
     tile build
     ```

7. Upload tile to PCF by either using WebUI or pcf cli


The generator will first create a BOSH release (in the `release` subdirectory),
then wrap that release into a Pivotal tile (in the `product` subdirectory).
If required for the installation, it will automatically pull down the latest
release version of the Cloud Foundry CLI.
