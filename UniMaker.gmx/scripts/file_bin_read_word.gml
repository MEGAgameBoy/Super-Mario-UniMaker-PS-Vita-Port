/*
**  Usage:
**      file_bin_read_word(file,size,bigend)
**
**  Arguments:
**      file        file id of an open binary file
**      size        size of the word in bytes
**      bigend      set to TRUE to use big-endian byte order (MSB first),
**                  or FALSE to use little-endian byte order (LSB first)
**
**  Returns:
**      an integer word of the given size from the given file
**
**  GMLscripts.com
*/
{
    var file,size,bigend,value,i,b;
    file = argument0;
    size = argument1;
    bigend = argument2;
    value = 0;
    for (i=0; i<size; i+=1) {
        b[i] = file_bin_read_byte(file);
    }
    if (bigend) for (i=0; i<size; i+=1) value = value << 8 | b[i];
    else for (i=size-1; i>=0; i-=1) value = value << 8 | b[i];
    return value;
}
