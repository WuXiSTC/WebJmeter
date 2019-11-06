FROM webswing/webswing-se:2.6.1_jre8

ENV JMETER_HOME /jmeter
ENV JMETER_FILE /jmeter.tgz
ENV JMETER_SRC http://mirrors.tuna.tsinghua.edu.cn/apache//jmeter/binaries/apache-jmeter-5.1.1.tgz

RUN wget -O ${JMETER_FILE} ${JMETER_SRC} && \
    tar zcvf ${JMETER_FILE} ${JMETER_HOME} && \
    rm ${JMETER_FILE}