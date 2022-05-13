# khewfans @ st.com

MODIR=${0%/*}

echo "stm-fts-drv post-fs-data started" >> /dev/kmsg
echo "stm-fts-drv ${MODIR}" >> /dev/kmsg

# do stuff here

echo "stm-fts-drv post-fs-data completed" >> /dev/kmsg
