FROM vectorim/element-web

COPY ./config.json /app/config.json
COPY ./background.png /app/background.png
RUN sed -i 's|Element|etke.cc|g' /app/manifest.json && \
	sed -i 's|Element|etke.cc|g' /app/index.html && \
	sed -i 's|app.element.io/themes/element/img/logos/opengraph.png|etke.cc/img/logo.png|g' /app/index.html && \
	sed -i 's|vector-icons/favicon.*|https://etke.cc/img/logo.png">|g' /app/index.html && \
	sed -i 's|Element|etke.cc|g' /app/welcome.html && \
	sed -i 's|element.io|etke.cc|g' /app/welcome.html && \
	sed -i 's|welcome/images/logo.svg|https://etke.cc/img/logo.png|g' /app/welcome.html
