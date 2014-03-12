#include "common.h"
#include <stdlib.h>

char	*ft_strndup(char *str, int nb)
{
	char	*dup;
	int		i;

	i = 0;
	dup = (char*)malloc(sizeof(char) * (nb + 1));
	if (!dup)
		return (NULL);
	while (i < nb && str[i])
	{
		dup[i] = str[i];
		i++;
	}
	dup[i] = '\0';
	return (dup);
}
