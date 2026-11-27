# convert-a-mp3-to-mp4

> Turn every MP3 file in a folder into an MP4 video with a static background image, using FFmpeg.

[English](#english) | [العربية](#arabic)

![Bash](https://img.shields.io/badge/shell-bash-4EAA25?logo=gnubash&logoColor=white)
![Requires FFmpeg](https://img.shields.io/badge/requires-FFmpeg-007808?logo=ffmpeg&logoColor=white)
![License: Apache 2.0](https://img.shields.io/badge/license-Apache%202.0-blue)

---

<a id="english"></a>

## English

### Overview

`convert-mp3-to-mp4.sh` combines each MP3 file in the current folder with a single image (`photo.png`) to produce an MP4 video of the same length as the audio. This is useful for uploading audio, such as recitations, lectures, or podcasts, to video platforms.

### Features

- Converts all `.mp3` files in the folder in one run (matching is case-insensitive, so `.MP3` works too).
- Handles file names that contain spaces.
- Each output video keeps the audio file's name: `name.mp3` → `name.mp4`.
- Encodes video with H.264 (`libx264`, tuned for still images, `yuv420p`) and audio with AAC at 192 kbps.
- Checks that `ffmpeg` is installed and `photo.png` exists before starting.
- Reports each failed file and prints a final summary; exits with an error code if any file failed.

### Requirements

- Bash
- [FFmpeg](https://ffmpeg.org/) with `libx264` support
- An image named `photo.png` in the same folder as the MP3 files

Install FFmpeg, for example:

```bash
# Debian/Ubuntu
sudo apt install ffmpeg
# macOS (Homebrew)
brew install ffmpeg
```

### Installation

```bash
git clone https://github.com/fahad4x4/convert-a-mp3-to-mp4.git
cd convert-a-mp3-to-mp4
chmod +x convert-mp3-to-mp4.sh
```

### Usage

1. Put your `.mp3` files and a `photo.png` image in one folder.
2. Run the script **from inside that folder**:

   ```bash
   cd /path/to/your/mp3/folder
   /path/to/convert-a-mp3-to-mp4/convert-mp3-to-mp4.sh
   ```

Example output:

```text
Starting the conversion process...
Converting: 01 intro.mp3 -> 01 intro.mp4
Converting: 02 lesson.mp3 -> 02 lesson.mp4
Conversion process completed successfully!
```

> **Note:** an existing `.mp4` with the same name as an output file is overwritten.

### Project structure

```text
convert-a-mp3-to-mp4/
├── convert-mp3-to-mp4.sh   # the conversion script
├── LICENSE                 # Apache License 2.0
└── README.md
```

### License

Released under the Apache License 2.0. See [LICENSE](LICENSE).

### Author

**Fahad ALGhathbar** — GitHub: [@fahad4x4](https://github.com/fahad4x4)

---

<a id="arabic"></a>

<div dir="rtl">

## العربية

### نظرة عامة

يدمج السكربت `convert-mp3-to-mp4.sh` كل ملف MP3 في المجلد الحالي مع صورة واحدة (`photo.png`) لإنتاج فيديو MP4 بطول المقطع الصوتي نفسه. وهو مفيد لرفع المحتوى الصوتي، مثل التلاوات والمحاضرات والبودكاست، على منصات الفيديو.

### المزايا

- تحويل جميع ملفات `.mp3` في المجلد دفعة واحدة (دون تمييز لحالة الأحرف، فتعمل ملفات `.MP3` أيضًا).
- دعم أسماء الملفات التي تحتوي على مسافات.
- يحمل كل فيديو ناتج اسم الملف الصوتي نفسه: `name.mp3` ← `name.mp4`.
- ترميز الفيديو بصيغة H.264 ‏(`libx264` مع ضبط مخصص للصور الثابتة و`yuv420p`)، وترميز الصوت بصيغة AAC بمعدل 192 كيلوبت/ثانية.
- التحقق من تثبيت `ffmpeg` ومن وجود `photo.png` قبل البدء.
- الإبلاغ عن كل ملف يفشل تحويله وطباعة ملخص في النهاية، مع الخروج برمز خطأ إذا فشل أي ملف.

### المتطلبات

- Bash
- ‏[FFmpeg](https://ffmpeg.org/) مع دعم `libx264`
- صورة باسم `photo.png` في المجلد نفسه الذي يحتوي ملفات MP3

لتثبيت FFmpeg، على سبيل المثال:

```bash
# Debian/Ubuntu
sudo apt install ffmpeg
# macOS (Homebrew)
brew install ffmpeg
```

### التثبيت

```bash
git clone https://github.com/fahad4x4/convert-a-mp3-to-mp4.git
cd convert-a-mp3-to-mp4
chmod +x convert-mp3-to-mp4.sh
```

### طريقة الاستخدام

1. ضع ملفات `.mp3` وصورة `photo.png` في مجلد واحد.
2. شغّل السكربت **من داخل ذلك المجلد**:

   ```bash
   cd /path/to/your/mp3/folder
   /path/to/convert-a-mp3-to-mp4/convert-mp3-to-mp4.sh
   ```

مثال على المخرجات:

```text
Starting the conversion process...
Converting: 01 intro.mp3 -> 01 intro.mp4
Converting: 02 lesson.mp3 -> 02 lesson.mp4
Conversion process completed successfully!
```

> **ملاحظة:** إذا وُجد ملف `.mp4` بالاسم نفسه للملف الناتج، فسيُستبدل بالملف الجديد.

### هيكل المشروع

```text
convert-a-mp3-to-mp4/
├── convert-mp3-to-mp4.sh   # سكربت التحويل
├── LICENSE                 # رخصة Apache 2.0
└── README.md
```

### الرخصة

المشروع منشور بموجب رخصة Apache الإصدار 2.0. راجع ملف [LICENSE](LICENSE).

### المؤلف

**فهد الغثبر** — حساب GitHub: [@fahad4x4](https://github.com/fahad4x4)

</div>
