#include "common.h"

int	ft_strncmp(char *str, char *str2, size_t n)
{
	size_t	i;

	i = 0;
	while (str[i] && str2[i] && str[i] == str2[i] && i < n)
		++i;
	if (i == n)
		return (0);
	return (str2[i] - str[i]);
}
