/*
**  Usage:
**      file_bin_write_word(file,size,bigend,value)
**
**  Arguments:
**      file        file id of an open binary file
**      size        size of the word in bytes
**      bigend      set to TRUE to use big-endian byte order (MSB first),
**                  or FALSE to use little-endian byte order (LSB first)
**      value       integer value to write to the file
**
**  Returns:
**      nothing
**
**  GMLscripts.com
*/
{
    var file,size,bigend,value,i,b;
    file = argument0;
    size = argument1;
    bigend = argument2;
    value = argument3;
    for (i=0; i<size; i+=1) {
        b[i] = value & 255;
        value = value >> 8;
    }
    if (bigend) for (i=size-1; i>=0; i-=1) file_bin_write_byte(file,b[i]);
    else for (i=0; i<size; i+=1) file_bin_write_byte(file,b[i]);
}
