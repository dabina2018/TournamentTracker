   M S B A M L   `   `   `  ���� N  JTournamentTrackerUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:TournamentTrackerUITournamentTrackerUI  *    $TournamentTrackerUI.TournamentViewer   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     3local!clr-namespace:TournamentTrackerUI       � Title$  TournamentViewer��$	��450��$	��500��.��� $��0,10,0,0q� � RowDefinitions �� $��0* ��� $��0* ��� $	��75* ��� $
��137* � � ColumnDefinitions �� $	��23* ��� $	��27* �.+��� -    ��Name$ 
roundLabel��$��0��$��Round��$
��Left=�$��	22,80,0,0q�$	��Top=�$��30��$��68�� J� RenderTransformOrigin$ 
0.926,0.65&�$��3���� -    ��Name$ matchupListBox��$��
11,13,3,60q�$��3��$ 0.5,0.5&�z�V� .~��� �� ��  �� Angle$ -0.032Q�T� �� -    ��Name$ unplayedRoundCheckBx��$��0��$��Unplayed Only��$
��Left=�$��
73,113,0,0q�$	��Top=�$��27��$	��160��$��3��$��2������ �� -    ��Name$ roundComboBx��$
��Left=�$��
105,83,0,0q�$	��Top=�$��75��$��24��$��0��$��3���� -   $ vsLabel��$
��-vs-��$
��Left=�$��64��$ 5.407,2.885&�$��50,107,0,137q�$��1��$��3���� -   	 ��Name$	 scoreBtn��$��Score��$
��Left=�$��182,104,0,0q�$	��Top=�$��33��$��61��$ 0.543,0.043&�$��1��$��3���� $��0��$��Tournament: ��$��20(�$��
5,19,90,86q�$��3���� -   $ tournamentName_Label��$��0��$��<none>��$
��Left=�$��
145,19,0,0q�$	��Top=�$ -0.281,0.562&�$��39��$	��196��$��20(�$��2��$��3���� -   $ teamTwoLabel��$��
<Team Two>��$	��Top=�$��34��$
��Left=�$	��139��$��	20,14,0,0q�$��1��$��3���� -	   $ teamTwoScoreLabel��$��Score: ��$
��Left=�$��	20,53,0,0q�$	��Top=�$��32��$��68��$ 0.694,0.922&�$��1��$��3���� -
   
 ��Name$
 teamTwoScore_textbx��$��88,60,135,172q�$��0��$��1��$��3��$ 1.188,0.407&��� -   $ teamOneLabel��$��
<Team One>��$
��Left=�$	��Top=�$��29��$	��137��$��1��$��
13,153,0,0q�$��3���� -   $ teamOneScoreLabel��$��Score: ��$
��Left=�$��
11,188,0,0q�$	��Top=�$��31��$��58��$ 0.294,0.805&�$��1��$��3���� -   $
 teamOneScore_textbx��$��74,195,135,38q�$��0��$��1��$��3��