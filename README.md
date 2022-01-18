This script converts your Youtube subscriptions to [Youtube cli client yt](https://github.com/sayan01/scripts/blob/master/yt). Make sure that you have [it](https://github.com/sayan01/scripts/blob/master/yt) installed before proceeding any further.

# Before usage
## Script modification
You also have to modify your yt.sh file on the line 136 for this to work.
You need to modify the line 136 from this
```
response=$(curl -s "https://www.youtube.com/c/$query/videos" |\
```
to look like this:
```
response=$(curl -s "https://www.youtube.com/channel/$query/videos" |\
```
That is because we are now using the channel id (`/channel/id`) instead of the custom url (`/c/something`). More info on this can be found on [Youtube Help](https://support.google.com/youtube/answer/6180214?hl=en).
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
