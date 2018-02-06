/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_wstrnew.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: omykolai <omykolai@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/01/18 19:14:28 by omykolai          #+#    #+#             */
/*   Updated: 2018/01/25 19:59:16 by omykolai         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <wchar.h>
#include "libft.h"

wchar_t	*ft_wstrnew(size_t size)
{
	wchar_t	*res;

	res = ft_memalloc(sizeof(wchar_t) * (size + 1));
	return (res);
}
