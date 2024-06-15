-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

local cmd = vim.cmd

-- Русский язык
cmd("set keymap=russian-jcukenwin")
cmd("set iminsert=0")
cmd("set imsearch=0")
