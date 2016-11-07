# A character in UTF-8 can be anywhere from 1 to 4 bytes long. The bytes are 8 bits long and are subject to the following rules:
#
# For a 1-byte character, the first bit is a 0, followed by its unicode code.
# For an n-byte character, the first n bits are all 1s and the n + 1 bit is 0. This is followed by n - 1 bytes in which the 2 most significant bits (that is, the leftmost 2) are 10.
# This is how the UTF-8 encoding would work:
#
#    Char. number range  |        UTF-8 octet sequence
#       (hexadecimal)    |              (binary)
#    --------------------+---------------------------------------------
#    0000 0000-0000 007F | 0xxxxxxx
#    0000 0080-0000 07FF | 110xxxxx 10xxxxxx
#    0000 0800-0000 FFFF | 1110xxxx 10xxxxxx 10xxxxxx
#    0001 0000-0010 FFFF | 11110xxx 10xxxxxx 10xxxxxx 10xxxxxx
# Given an array of integers representing the data, return true if it can be converted to a valid UTF-8 encoding, otherwise return false.
