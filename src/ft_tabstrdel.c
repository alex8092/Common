#include "common.h"
#include <stdlib.h>

void	ft_tabstrdel(char **tab)
{
	int		i;

	i = 0;
	while (tab[i])
	{
		free(tab[i]);
		i++;
	}
	free(tab);
}
