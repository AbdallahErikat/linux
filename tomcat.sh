#!/bin/bash

# تعيين اسم للصورة
IMAGE_NAME="tomcat"

# توليد علامة فريدة باستخدام التاريخ والوقت الحالي
UNIQUE_TAG=$(date +%Y%m%d%H%M%S)

# تحقق من وجود ملف Dockerfile في الدليل الحالي
if [ ! -f Dockerfile ]; then
  echo "Dockerfile not found in the current directory."
  exit 1
fi


# بناء الصورة باستخدام ملف Dockerfile في الدليل الحالي
docker build -t "$IMAGE_NAME:$UNIQUE_TAG" .

# تحقق من نجاح عملية البناء
if [ $? -eq 0 ]; then
  echo "Image built successfully with tag: $IMAGE_NAME:$UNIQUE_TAG"
else
  echo "Failed to build the images"
fi
