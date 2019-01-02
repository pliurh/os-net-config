FROM python
ADD . /os-net-config
ADD . /daemon.sh
RUN pip install -e /os-net-config
CMD ["/daemon.sh"]
