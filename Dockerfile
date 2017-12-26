FROM python:2-alpine
RUN pip install flask
RUN adduser -D appuser
USER appuser
ADD application.py /home/appuser
WORKDIR /home/appuser
EXPOSE 5000
CMD ["python", "application.py"]
