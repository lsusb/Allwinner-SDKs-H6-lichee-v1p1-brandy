
##
## Makefile for Sunxi Secure Boot
##



include $(TOPDIR)/config.mk

LIB	:= $(obj)libkeyladder.o

COBJS-y += create_key_ladder.o

SRCS	:= $(COBJS-y:.o=.c)
OBJS	:= $(addprefix $(obj),$(COBJS-y))

all:	 $(obj).depend $(LIB)

$(LIB):	$(OBJS)
	$(call cmd_link_o_target, $(OBJS))

#########################################################################

# defines $(obj).depend target
include $(SRCTREE)/rules.mk

sinclude $(obj).depend

#########################################################################
