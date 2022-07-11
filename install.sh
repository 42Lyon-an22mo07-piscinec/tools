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

FILE="$HOME/.zshrc"
if [[ -f "$FILE" ]]
then
	echo "\n\n#comp and norm aliases\n" >> ~/.zshrc
	echo "alias norm='norminette -R CheckForbiddenSourceHeader ex*/ft*'" >> ~/.zshrc
	echo "alias comp='gcc -Wall -Wextra -Werror *.c && ./a.out'" >> ~/.zshrc 
	echo "\n\n" >> ~/.zshrc
	source ~/.zshrc
else
	echo "\n\n#comp and norm aliases\n" >> ~/.bashrc
	echo "alias norm='norminette -R CheckForbiddenSourceHeader ex*/ft*'" >> ~/.bashrc
	echo "alias comp='gcc -Wall -Wextra -Werror *.c && ./a.out'" >> ~/.bashrc 
	echo "\n\n" >> ~/.bashrc
	source ~/.bashrc
fi
echo "Alias installation complete !!\nUse comp in ex0X folders to compile and execute\nUse norm in c0X folder to check the norm of all ft_*.c"
