#!/bin/bash

# コミットメッセージが渡されなかった場合はエラーにする
if [ -z "$1" ]; then
  echo "エラー: コミットメッセージを指定してください。"
  echo "使い方: $0 \"コミットメッセージ\""
  exit 1
fi

# 作業内容の確認
echo "変更をステージングします..."
git add .

# コミット
echo "コミットします: $1"
git commit -m "$1"

# プッシュ
echo "GitHubへプッシュします..."
git push -u origin main

echo "完了しました。"