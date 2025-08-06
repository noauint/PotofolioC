# ベースイメージにTomcat 9を指定
FROM tomcat:9.0

# server.xml を Tomcat の conf ディレクトリにコピー（カスタム設定用）
COPY server.xml /usr/local/tomcat/conf/server.xml

# WARファイルを Tomcat の webapps フォルダにコピー
COPY Portofolio.war /usr/local/tomcat/webapps/

# コンテナの8080ポートを公開
EXPOSE 8080
