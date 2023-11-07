void main() {
    char *video_memory = (char *) 0xb8000; // Starting address of video memory
    char *message = "Hello World";
    unsigned int i = 0;
    unsigned int j = 0;

    while (message[i] != '\0') {
        video_memory[j] = message[i];
        video_memory[j+1] = 0x07; // Attribute byte - light grey on black background
        i++;
        j += 2; // Move to the next cell in video memory
    }

    return;
}
