# 基本イメージとして texlive-full を使用
FROM texlive/texlive

# 日本語サポート用のパッケージとフォントをインストール
RUN tlmgr install collection-langjapanese latexmk \
    && apt-get update && apt-get install -y fonts-noto-cjk

# 作業ディレクトリを設定
WORKDIR /workspace

# xelatexをデフォルトに設定（必要に応じて）
RUN echo '$pdflatex = "xelatex %O %S";' > /root/.latexmkrc

CMD ["bash"]
