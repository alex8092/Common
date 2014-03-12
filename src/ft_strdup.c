#include "common.h"
#include <stdlib.h>

char		*ft_strdup(char *str)
{
	int		index;
	char	*dup;

	index = 0;
	dup = (char *)malloc(sizeof(char) * (ft_strlen(str) + 1));
	while (str[index])
	{
		dup[index] = str[index];
		index++;
	}
	dup[index] = '\0';
	return (dup);
}
