#!/bin/bash
# Скрипт для создания резервной копии заданной директории

# Указываем директорию для резервного копирования
SOURCE_DIR="$1"

# Проверка, что директория указана
if [ -z "$SOURCE_DIR" ]; then
    echo "Использование: $0 /путь/к/директории"
    exit 1
fi

# Указываем директорию для сохранения резервной копии
BACKUP_DIR="./backups"
mkdir -p "$BACKUP_DIR"

# Создание резервной копии с текущей датой
BACKUP_FILE="$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).tar.gz"
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

echo "Резервная копия $SOURCE_DIR создана: $BACKUP_FILE"
