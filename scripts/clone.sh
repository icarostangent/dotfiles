#!/bin/bash


BASE_URL="git@gitlab.icarostangent.com:josh"
WORKING_DIR=$HOME/workspace

echo "[*] Cloning repos from $BASE_URL to $WORKING_DIR"

git clone $BASE_URL/dot-files.git $WORKING_DIR/dot-files
git clone $BASE_URL/deploy.git $WORKING_DIR/deploy
git clone $BASE_URL/provision.git $WORKING_DIR/provision
git clone $BASE_URL/notes.git $WORKING_DIR/notes
git clone $BASE_URL/icarostangent.github.io.git $WORKING_DIR/icarostangent.github.io
git clone $BASE_URL/junk.git $WORKING_DIR/junk

