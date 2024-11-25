#ディレクトリ構造

    |.
    ├── android  // androidの設定関連ファイル
    ├── ios  // IOSの設定関連ファイル
    ├── assets  // アセットデータ関連ファイル
    │   ├── images  // 写真情報を格納するファイル
    │   └── json  // json情報を格納するファイル
    ├── coverage // 動作確認のチェックシートを一覧で確認できるファイルを格納したファイル
    ├── lib  // コードを管理するファイル
    │   ├── component  // 再利用するUIを格納するファイル
    │   ├── constant  // アプリで使用する定数の管理するファイル
    │   ├── core  // アプリのコアとなるクラスを管理するファイル
    │   ├── infrastructure  // API通信やデータベース管理を担当するファイル
    │   ├── model  // アプリの型定義を管理するファイル
    │   ├── provider  // ViewModelやRepositoryを使用するためのファイル
    │   ├── repository  // ビジネスロジックの役割を持つクラスを管理するファイル
    │   ├── router  // アプリの画面遷移に関するファイル
    │   ├── ui_core  // UIに関するコアとなる機能を持つクラスを管理するファイル
    │   ├── view  // アプリの画面となるクラスを管理するファイル 
    │   ├── view_model  // アプリのUIステートを保持し、画面に表示するデータを変換する役割を持つクラスを管理
    │   ├── app.dart  // main.dartでrunAppに渡す上位のアプリケーションクラス
    │   ├── importer.dart  // 全てのファイルをエクスポートするファイル
    │   └── main.dart  // アプリの一番上位(エントリーポイント)となるファイル
    └── test  // 動作確認テストをそれぞれのファイルごとに行い結果を格納するファイル
        ├── constant
        ├── core
        ├── model
        ├── provider
        ├── repository
        ├── ui_core
        └── view_model