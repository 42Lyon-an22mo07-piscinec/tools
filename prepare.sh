#!/bin/sh

CURRENT_DIR="$( cd "$( dirname "$0" )" && pwd )"

cp -r $1 $1_ready
cd $1_ready

C0X_READY="$( pwd )"

echo "Copie de ${1} dans ${C0X_READY}\n\nEnlève les fichiers en trop :\n"
find -type f -name ".*" -delete -print -o -name "main.c" -delete -print -o -name "a.out" -delete -print

echo "==============================================================================\n"
echo "============= 1. TODO - Vérification manuelle du code source : ===============\n"
echo "==============================================================================\n"
cat ${C0X_READY}/ex*/ft*

echo "\n==============================================================================\n"
echo "=========== 2. TODO - Verification manuelle des fichiers restants : ==========\n"
echo "==============================================================================\n"
ls -a ${C0X_READY}/*

echo "\nNorminette avec flag :\n"
norminette -R checkForbiddenSourceHeader ${C0X_READY}

echo "\n========================================================================="
echo "==== ${1} prêt pour vérifications avant push, remonter pour vérifier ===="
echo "========================================================================="
echo "===== https://github.com/orgs/42Lyon-an22mo07-piscinec/repositories ====="
echo "=========================== tools par agaley ============================"
echo "Tapper :"
echo "cd ${C0X_READY}\n"
