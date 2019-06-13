FROM python

WORKDIR /opt/app

EXPOSE 8000

RUN pip3 install pipenv
COPY Pipfile Pipfile.lock ./
RUN pipenv install --system --dev --deploy --skip-lock
COPY . .

COPY ./entrypoint.sh /entrypoint.sh
RUN sed -i 's/\r//' /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
