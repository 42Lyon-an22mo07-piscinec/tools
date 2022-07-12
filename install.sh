# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    install.sh                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: macourio <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/10 07:55:12 by macourio          #+#    #+#              #
#    Updated: 2022/07/11 20:17:20 by agaley           ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

TOOLS="~/tools"
if [[ -f "$TOOLS" ]]
then
	cd $TOOLS
	git pull
	echo "Tools already existing, updated"
else
	git clone https://github.com/42Lyon-an22mo07-piscinec/tools ~/tools
	echo "Tools rep cloned in ~/tools - Don't rename it"
fi

FILE="$HOME/.zshrc"
if [[ -f "$FILE" ]]
then
	echo "\n\n#comp and norm aliases\n" >> ~/.zshrc
	echo "alias norm='norminette -R CheckForbiddenSourceHeader ex*/ft*'" >> ~/.zshrc
	echo "alias comp='gcc -Wall -Wextra -Werror *.c && ./a.out'" >> ~/.zshrc 
	echo "alias prep='sh ~/tools/prepare.sh'" >> ~/.zshr
	echo "\n\n" >> ~/.zshrc
	source ~/.zshrc
else
	echo "\n\n#comp and norm aliases\n" >> ~/.bashrc
	echo "alias norm='norminette -R CheckForbiddenSourceHeader ex*/ft*'" >> ~/.bashrc
	echo "alias comp='gcc -Wall -Wextra -Werror *.c && ./a.out'" >> ~/.bashrc 
	echo "alias prep='sh ~/tools/prepare.sh'" >> ~/.bashrc
	echo "\n\n" >> ~/.bashrc
	source ~/.bashrc
fi
echo "Les alias des tools sont installés !!\nUse comp from any exYY folder with a main.c to compile and execute\nUse norm in any cXX folder to check the norm with flag CheckForbiddenSourceHeader for all ft_*.c\nUse prep cXX where you need to prepare the folder cXX to push. It will copy the folder to a cXX_ready, remove unwanted files, show the files and cat the source code for verification."
echo "\nagaley"
