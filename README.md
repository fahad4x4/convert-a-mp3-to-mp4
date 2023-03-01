This script will iterate over all the mp3 files in the current directory, and for each file, it will create an mp4 video file with the same name as the mp3 file, using a static image named "photo.png" as the video background. The output video file will be named with a prefix number followed by the original mp3 file name. Finally, a message will be printed before and after the conversion process to indicate its progress and completion.


هذا سكريبت يستخدم أداة ffmpeg لتحويل ملفات الصوت بامتداد mp3 إلى ملفات فيديو بامتداد mp4، 
حيث يتم دمج ملف الصوت مع صورة ثابتة باستخدام خاصية -loop في ffmpeg. 
يقوم السكريبت بتكرار عملية التحويل لكل ملف mp3 في نفس المجلد، حيث يستخدم قيمة متغير i لإسناد اسم ملف مختلف لكل ملف mp4 الناتج عن التحويل.
