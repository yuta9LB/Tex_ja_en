# LaTeX環境

## 手順
1. docker build -t my-tex-japanese-env .
2. 作業したいディレクトリに移動
3. docker run -it -v $(pwd):/workspace my-tex-japanese-env
4. latexmk -pdf .texファイルパス

## その他
- デフォルトは英語に対応した環境になっています。日本語のTeXファイルをコンパイルする際は'./toggle_latexmkrc.sh 'を実行して下さい。