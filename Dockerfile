FROM elastic/filebeat:7.2.0

USER root

RUN \
	chgrp -R 0 /usr/share/filebeat/ /var/log && \
	chmod -R g=u /usr/share/filebeat/ /var/log

USER filebeat

CMD ["-e","-strict.perms=false"]
