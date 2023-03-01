the Bash script to convert multiple mp3 files to mp4 videos with a static image using FFmpeg and printing a message before and after the conversion


هذا سكريبت يستخدم أداة ffmpeg لتحويل ملفات الصوت بامتداد mp3 إلى ملفات فيديو بامتداد mp4، 
حيث يتم دمج ملف الصوت مع صورة ثابتة باستخدام خاصية -loop في ffmpeg. 
يقوم السكريبت بتكرار عملية التحويل لكل ملف mp3 في نفس المجلد، حيث يستخدم قيمة متغير i لإسناد اسم ملف مختلف لكل ملف mp4 الناتج عن التحويل.
