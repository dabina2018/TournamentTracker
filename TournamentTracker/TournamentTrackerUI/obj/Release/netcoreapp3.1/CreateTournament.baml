   M S B A M L   `   `   `  ���� N  JTournamentTrackerUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:TournamentTrackerUITournamentTrackerUI  *    $TournamentTrackerUI.CreateTournament   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     3local!clr-namespace:TournamentTrackerUI       � Title$  CreateTournament��$	��650��$	��600�� � 
ResizeMode$ NoResize=�.���  � RowDefinitions �� $��* ��� $��* ��� $��* � � ColumnDefinitions �� $	��78* ��� $	��73* ��� $	��49* �.+��� -    ��Name$ selectTeam_listbx��$��1��$��30,38,30,120q��� $��0��$��1��$��Create Tournament��$
��Left=�$��0,10,0,0q�$	��Top=�$��20(�$��37��$	��178���� $��0��$��Tournament Name��$
��Left=�$��	24,69,0,0q�$	��Top=�$��30��$	��162���� -    ��Name$ tournamentNameValue��$��Center=�$��	0,106,0,0q�$��TextBox�� �� TextWrapping$
 Wrap=�$	��Top=�$	��174��$��23���� $��1��$��	Entry Fee��$
��Left=�$��
17,159,0,0q�$	��Top=� J� RenderTransformOrigin$ -0.157,0.527&�$��99��$��31���� -   $ entryFeeValue��$
��Left=�$��143,159,0,0q�$
��0.00��$
 Wrap=�$	��Top=�$��28��$��61���� $��1��$��Select Team��$
��Left=�$��17,5,0,0q�$	��Top=�$ 0.653,-1.215&�$��28��$��93��$��1���� -    ��Name$ 
AddTeamBtn��$��1��$��Add Team��$
��Left=�$��52,119,0,60q�$	��144���� -   $ CreatePrizeBtn��$��1��$��Create Prize��$
��Left=�$��52,169,0,10q�$	��144���� $��Prizes��$
��Left=�$��16,5,0,0q�$	��Top=�$	��100��$��28��$��1��$��1���� -   $ tournamentTeams_ListBx��$��
6,105,6,27q�$��1���� $��Teams / Players��$
��Left=�$��6,69,0,0q�$	��Top=�$	��162��$ 
0.296,1.63&�$��1��$��31���� -   $ CreateTournamentBtn��$��Create Tournament��$
��Left=�$��	32,22,0,0q�$	��Top=�$	��148��$��52��$��2��$��1���� -   $ RemoveSelectedTeam_Btn��$��Center=�$��	0,117,0,0q�$	��Top=�$��50��$	��114��$ 0.447,2.688&�$��2��.���� $ 0.735,-1&��� $�Remove���� �� $�Selected���� -	   $ RemovePrizes_btn��$��Center=�$��0,66,0,0q�$	��Top=�$��47��$	��114��$��2��$��1��.���� $ 0.735,-1&��� $�Remove���� �� $�Selected���� -
   $ prizes_ListBx��$��	6,38,6,75q�$��1��$��1���� -   	 ��Name$	 CreateTeamLink��$��Right=�$��0,211,10,164q�$��96��$��2��.���� -   .�.��� $�Create Team��