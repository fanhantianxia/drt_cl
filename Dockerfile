#FROM daocloud.io/fanhantianxia/matlab_config
FROM xin0214/matlab_config:latest
MAINTAINER Yu Fan <zyf15816794709@163.com>

RUN apt-get -y install git
RUN mkdir -p /script
RUN cd /script && git clone https://github.com/fanhantianxia/drt_cl.git

ADD DRT_cl /root/matlab_script/DRT_cl
RUN chmod 777 -R /root/matlab_script/

RUN rm -rf /script
ENTRYPOINT ["/root/matlab_script/drt_cl"]
