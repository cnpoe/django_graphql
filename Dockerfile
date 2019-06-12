FROM python

WORKDIR /opt/app
RUN pip3 install pipenv
COPY Pipfile Pipfile.lock ./
RUN pipenv install --system --dev --deploy

COPY . .

ENTRYPOINT [ "python" ]
