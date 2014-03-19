#include "common.h"
#include <stdlib.h>

void	ft_strdel(char	**pstr)
{
	if (pstr && *pstr)
	{
		free(*pstr);
		*pstr = NULL;
	}
}
