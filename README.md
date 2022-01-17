This script converts your Youtube subscriptions to [Youtube cli client yt](https://github.com/sayan01/scripts/blob/master/yt). Make sure that you have [it](https://github.com/sayan01/scripts/blob/master/yt) installed before proceeding

# Usage
## 1. Get the subscriptions file
1. Go to the [Google takeout manager](https://takeout.google.com/takeout/custom/youtube)
2. Select `Youtube and Youtube Music` and set that you only need the subscriptions
3. Download the zip file
4. Extract the `csv` file that contains the subscriptions (its name depends on your language)

## 2. Add permissions
```
chmod +x yt-subscriptions.sh
```
## 3. Run the script
The script requires 2 parameters.
```
./yt-subscriptions.sh <csv-file-location> <yt-config-location> 

```

Example usage:
```
./yt-subscriptions.sh odběry.csv ~/.config/yt/sublist
```
