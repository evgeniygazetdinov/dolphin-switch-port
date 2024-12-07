#include <switch.h>
#include <cstdio>
#include <thread>
#include <sys/stat.h>

void log_to_file(const char* message) {
    FILE* log_file = fopen("sdmc:/switch/dolphin-emu/dolphin-launcher.log", "a");
    if (log_file) {
        time_t now = time(NULL);
        char timestamp[26];
        ctime_r(&now, timestamp);
        timestamp[24] = '\0'; // Убираем перенос строки
        fprintf(log_file, "[%s] %s\n", timestamp, message);
        fclose(log_file);
    }
}

// Функция для проверки прав доступа к файлу
void checkFilePermissions(const char* path) {
    struct stat st;
    char log_buf[512];
    
    if (stat(path, &st) == 0) {
        snprintf(log_buf, sizeof(log_buf), 
                "File: %s\nSize: %lld bytes\nPermissions: %o\nUser ID: %d\nGroup ID: %d",
                path, (long long)st.st_size, st.st_mode & 0777, st.st_uid, st.st_gid);
        printf("%s\n", log_buf);
        log_to_file(log_buf);
        
        // Проверяем основные права
        if (st.st_mode & S_IRUSR) log_to_file("File is readable");
        if (st.st_mode & S_IWUSR) log_to_file("File is writable");
        if (st.st_mode & S_IXUSR) log_to_file("File is executable");
    } else {
        snprintf(log_buf, sizeof(log_buf), "Cannot get file stats for: %s", path);
        printf("%s\n", log_buf);
        log_to_file(log_buf);
    }
}

// Функция для логирования в файл


// Function to check if file exists
bool fileExists(const char* path) {
    FILE* file = fopen(path, "r");
    if (file) {
        fclose(file);
        return true;
    }
    return false;
}

const int KEY_X = 4;
const int KEY_Y = 28;
const int KEY_A = 5;
const int KEY_B = 27;
const int KEY_PLUS = 1024;
const int KEY_MINUS = 2048;

// Function to execute a command on Switch with arguments
bool executeCommand(const char* command, const char* args) {
    char full_command[PATH_MAX * 2];  // Достаточно места для команды и аргументов
    
    // Проверяем существование исполняемого файла
    if (!fileExists(command)) {
        printf("Error: Executable not found at path: %s\n", command);
        log_to_file("Error: Executable not found at path");
        return false;
    }

    // Формируем полную команду с аргументами
    if (args) {
        snprintf(full_command, sizeof(full_command), "%s %s", command, args);
    } else {
        snprintf(full_command, sizeof(full_command), "%s", command);
    }

    printf("Attempting to execute: %s\n", full_command);
    log_to_file(full_command);

    // Даем время консоли обновиться и логам записаться
    consoleUpdate(NULL);
    svcSleepThread(2000000000ULL); // Ждем 2 секунды перед запуском

    // Корректно завершаем текущие сервисы
    romfsExit();
    consoleExit(NULL);
    
    // На Switch используем envSetNextLoad
    // Аргументы нужно передавать как argv, разделяя их пробелами
    char argv[PATH_MAX];
    if (args) {
        snprintf(argv, sizeof(argv), "-e \"sdmc:/switch/dolphin-emu/roms/DeadSpace.iso\"");
    } else {
        argv[0] = '\0';
    }
    
    Result rc = envSetNextLoad(command, argv);
    
    // После этой точки программа может быть уже не выполнена
    return true; // Этот return может не выполниться
}

bool mainLoop() {
    printf("\n\n-------- Main Menu --------\n");
    printf("Press B to run dolpin emulator\n");
    printf("Press - to exit\n");
    log_to_file("Main menu started");

    padConfigureInput(1, HidNpadStyleSet_NpadStandard);
    PadState pad;
    padInitializeDefault(&pad);
    bool needToRun = false;
    char* args;
    char* dolphin_cmd;
    while (appletMainLoop()) {
        // Сканируем ввод
        
        padUpdate(&pad);
        u64 kDown = padGetButtonsDown(&pad);
        if (kDown & KEY_MINUS) {
            printf("Exiting...\n");
            log_to_file("Exiting...");
            return false;
        }

        if (kDown & KEY_B) {
            printf("\nStarting Dolphin launch process...\n");
            log_to_file("Starting Dolphin launch process...");
            
            // Проверяем пути с префиксом sdmc:
            dolphin_cmd = "sdmc:/switch/dolphin-emu-nogui.nro";
            const char* rom_path = "sdmc:/switch/dolphin-emu/roms/DeadSpace.iso";
            
            char log_buf[256];
            snprintf(log_buf, sizeof(log_buf), "Checking paths - Dolphin: %s, ROM: %s", dolphin_cmd, rom_path);
            log_to_file(log_buf);
            
            printf("Checking paths:\n");
            printf("Dolphin executable: %s - %s\n", dolphin_cmd, fileExists(dolphin_cmd) ? "EXISTS" : "NOT FOUND");
            printf("ROM file: %s - %s\n", rom_path, fileExists(rom_path) ? "EXISTS" : "NOT FOUND");
            
            args = "-d -e sdmc:/switch/dolphin-emu/roms/DeadSpace.iso";
            snprintf(log_buf, sizeof(log_buf), "Executing command: %s with args: %s", dolphin_cmd, args);
            log_to_file(log_buf);
            
            printf("\nChecking file permissions:\n");
            checkFilePermissions(dolphin_cmd);
            
            printf("\nSetting up command execution with: %s\n", dolphin_cmd);
            needToRun = true;
        }
        if (needToRun){
            // Записываем последнее сообщение в лог
            const char* success_msg = "Attempting to launch Dolphin...";
            printf("%s\n", success_msg);
            log_to_file(success_msg);
            
            // Запускаем команду - после этого наша программа может быть уже не выполнена
            executeCommand(dolphin_cmd, args);
        }
                consoleUpdate(NULL);
        svcSleepThread(100000000ULL);
    }        

    return true;
}


int main(int argc, char* argv[]) {
    // Инициализация консоли

    consoleInit(NULL);
    log_to_file("Program started");
    mainLoop();
    consoleExit(NULL);
    return 0;
}