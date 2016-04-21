FROM scrapinghub/kumo-stack-hworker:v1.1.0rc3
COPY requirements-portia.txt /
RUN pip install --no-cache-dir -r requirements-portia.txt
ADD portia-entrypoint /usr/local/sbin/
RUN chmod +x /usr/local/sbin/portia-entrypoint
# Custom entrypoint in json format passed via environment
ENV ENTRYPOINT '["portia-entrypoint"]'
