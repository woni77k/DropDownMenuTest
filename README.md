# DropDownMenuTest

[画面]
1. ボタンを設置
2. 全てのボタンを選択しStack Viewを選択
3. StackViewを選択、Add New Constraints [top:0, left:0, right:0]
4. 全てのボタンを選択、Add New Constraints [Height:50]
5. Select Menuボタンの色設定（Text Color, BackGround Color)
6. 各メニュボタンの色設定(Text Color, BackGround Color)

[ソースコード]
1. Select a Menu登録 [connection: action]
2. 各ボタン登録 [connection: Outlet Collection]
3. 各ボタン登録 [connection: action]
4. 各ボタンの非表示選択
5. Select a Menu ボタンのaction処理
　 menuButtons.forEach { (button) in
　 UIView.animate(withDuration: 0.3, animations: {
　 button.isHidden = !button.isHidden
　 self.view.layoutIfNeeded() // ボタンの表示がSelect a menu上から表示されるのを処理
　 }) // UIView.animate
　 }
　 
6. 各ボタンのaction処理
　// 選択されたボタンのタイトル確認
　let tappedButton = sender
　print(tappedButton.titleLabel?.text ?? "None")

