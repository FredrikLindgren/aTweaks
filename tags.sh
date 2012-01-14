#!/bin/sh

find . -regex '.*\.\(tp.\|ssl\|slb\)' | xargs etags -l none --regex='/[ \t]*Name(\([A-Za-z0-9]+\))/\1/' --regex='/[ \t]*\(TRIGGER\|TARGET\)=\([A-Za-z0-9]+\)/\2/' --regex='/[ \t]*DEFINE_\(ACTION\|PATCH\)_\(MACRO\|FUNCTION\)[ \t]+\([A-Za-z0-9#_]+\)/\3/'
