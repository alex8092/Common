#include "common.h"
#include <unistd.h>

void	ft_putstr_fd(int fd, char * const str)
{
	ssize_t	ret;

	ret = write(fd, str, ft_strlen(str));
	(void)ret;
}
