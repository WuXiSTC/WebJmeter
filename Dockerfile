FROM webswing/webswing-se:2.6.1_jre8

ENV JMETER_HOME /jmeter
ENV JMETER_VERSION apache-jmeter-5.1.1
ENV JMETER_FILE ${JMETER_VERSION}.tgz
ENV JMETER_SRC http://mirrors.tuna.tsinghua.edu.cn/apache//jmeter/binaries/${JMETER_FILE}

RUN wget -O ${JMETER_FILE} ${JMETER_SRC} && \
    tar -xzvf ${JMETER_FILE} -C ./ && \
    rm ${JMETER_FILE} && \
    mv ./${JMETER_VERSION} ${JMETER_HOME}

ADD webswing.config.json ./webswing.config