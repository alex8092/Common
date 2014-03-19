#include "common.h"

static void	ft_putnbr_fd_rec(int fd, unsigned long nbr)
{
	char	c;

	if (nbr)
	{
		c = (nbr % 10) + '0';
		ft_putnbr_fd_rec(fd, nbr /= 10);
		ft_putchar_fd(fd, c);
	}
}

void	ft_putnbr_fd(int fd, long nbr)
{
	if (nbr < 0)
	{
		ft_putchar_fd(fd, '-');
		ft_putnbr_fd_rec(fd, -nbr);
	}
	else
		ft_putnbr_fd_rec(fd, nbr);
}
