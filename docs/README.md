# KRAFTBEER CONNECT - アーキテクチャ概要

## 🎯 プロジェクト概要

KRAFTBEER CONNECTは、クラフトビール愛好家向けの新しいコミュニティプラットフォームです。
モダンなサーバレス構成をベースに、AI支援を活用した開発と運用の最適化を目指しています。

## 🏗 技術スタック

- **フロントエンド**: Next.js（Cloud Run上）
- **APIサーバ**: FastAPI + Strawberry（GraphQL）
- **データベース**: Firestore（NoSQL、低コスト最適化）
- **インフラ管理**: Terraform
- **CI/CD**: GitHub Actions + Cloud Build

## 🔧 ディレクトリ構成

```
kraftbeer-connect/
├── service/
│   ├── app/             # フロントエンド (Next.js)
│   ├── server/          # APIサーバ (FastAPI + Strawberry)
│   ├── infra/           # Terraform構成
│   ├── shared/          # 共通ロジック・型
│   └── service-map.yaml # サービス間の責務・依存定義
├── .ai-index/           # AI支援用メタ情報（スキーマ、構造）
├── .github/workflows/   # CI/CD定義
├── docs/                # ドキュメント
├── scripts/             # セットアップ・自動化スクリプト
└── Makefile             # 開発支援コマンド
```

## 🤖 AI支援の設計方針

- `.ai-index/`にサービスマップ・GraphQLスキーマ・型変換マップなどを格納
- LLMがコード構造・責務・依存関係を理解しやすい形式で記述
- 将来的にはコードレビュー、設計提案、変更影響分析までAIで支援

## 🧠 今後のToDo

- `service-map.yaml` にサービスの責務と依存を明記
- Firestoreスキーマ設計・型定義の共有
- GraphQLスキーマのCode First実装開始（Strawberry）
- Cloud RunへのTerraform構成の整備
