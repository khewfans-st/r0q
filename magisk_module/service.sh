# khewfans @ st.com

MODIR=${0%/*}

echo "stm-fts-drv service started" >> /dev/kmsg
echo "stm-fts-drv ${MODIR}" >> /dev/kmsg

#FILES=$(find ${MODIR} -type f -name "*.ko")
FILES=$(ls ${MODIR} | grep ".ko")
for FILE in ${FILES}; do
	rmmod "${FILE%%.*}"
	insmod ${MODIR}/${FILE}
done

echo "stm-fts-drv service completed" >> /dev/kmsg
