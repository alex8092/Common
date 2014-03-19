#include "common.h"

void	ft_putchar_fd(int fd, char c)
{
	ssize_t	ret;

	ret = write(fd, &c, 1);
	(void)ret;
}
