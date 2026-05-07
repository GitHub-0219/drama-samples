#!/bin/bash
# Combine slides + audio into videos for all 5 dramas
BASE="/root/.openclaw/workspace/drama-samples"

combine_drama() {
  local DIR="$1"
  local NAME="$2"
  local SLIDES_DIR="$DIR/slides"
  local AUDIO_DIR="$DIR/audio"
  local OUTPUT_DIR="$DIR/output"
  mkdir -p "$OUTPUT_DIR"
  
  # Create segments
  for i in 1 2 3 4 5; do
    local s=$(printf "%02d" $i)
    local dur=$(ffprobe -v quiet -show_entries format=duration -of csv=p=0 "$AUDIO_DIR/n${i}.wav")
    ffmpeg -y -loop 1 -i "$SLIDES_DIR/s${s}.png" -i "$AUDIO_DIR/n${i}.wav" \
      -c:v libx264 -tune stillimage -c:a aac -b:a 192k \
      -pix_fmt yuv420p -shortest -t "$dur" \
      "$OUTPUT_DIR/seg_${s}.mp4" 2>/dev/null
    echo "  seg_${s}.mp4: ${dur}s"
  done
  
  # Concatenate
  local concat_file="$OUTPUT_DIR/concat.txt"
  for i in 1 2 3 4 5; do
    local s=$(printf "%02d" $i)
    echo "file 'seg_${s}.mp4'" >> "$concat_file"
  done
  
  ffmpeg -y -f concat -safe 0 -i "$concat_file" -c copy "$OUTPUT_DIR/${NAME}.mp4" 2>/dev/null
  local total=$(ffprobe -v quiet -show_entries format=duration -of csv=p=0 "$OUTPUT_DIR/${NAME}.mp4")
  echo "=== ${NAME}.mp4: ${total}s ==="
}

echo "--- Drama 1: 玄幻逆袭 ---"
combine_drama "$BASE/01-xuanhuan" "01-废物逆袭-玄幻"

echo "--- Drama 2: 战神归来 ---"
combine_drama "$BASE/02-zhanshen" "02-战神归来-都市"

echo "--- Drama 3: 甜宠霸总 ---"
combine_drama "$BASE/03-tianchong" "03-霸总别撩我-甜宠"

echo "--- Drama 4: 宫斗宅斗 ---"
combine_drama "$BASE/04-gongdou" "04-凤临天下-宫斗"

echo "--- Drama 5: 都市重生 ---"
combine_drama "$BASE/05-chongsheng" "05-重回2010-重生"

echo ""
echo "=========================================="
echo "ALL 5 DRAMA SAMPLES COMPLETE!"
echo "=========================================="
