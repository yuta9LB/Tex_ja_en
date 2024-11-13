#!/bin/bash

# チェックするファイルパス
latexmkrc_file="/root/.latexmkrc"

# ファイルが存在するか確認
if [ -f "$latexmkrc_file" ]; then
    # 現在の設定を確認
    if grep -q '\$pdflatex = "xelatex %O %S";' "$latexmkrc_file"; then
        # 現在が "xelatex" の場合、"pdflatex" に変更し、英語環境と出力
        echo '$pdflatex = "pdflatex %O %S";' > "$latexmkrc_file"
        echo "英語環境に変更しました"
    elif grep -q '\$pdflatex = "pdflatex %O %S";' "$latexmkrc_file"; then
        # 現在が "pdflatex" の場合、"xelatex" に変更し、日本語環境と出力
        echo '$pdflatex = "xelatex %O %S";' > "$latexmkrc_file"
        echo "日本語環境に変更しました"
    else
        echo "設定が既定のフォーマットと異なるため、手動で確認してください。"
    fi
else
    echo "$latexmkrc_file が存在しません。ファイルを確認してください。"
fi