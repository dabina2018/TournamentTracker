   M S B A M L   `   `   `  ����N  JTournamentTrackerUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:TournamentTrackerUITournamentTrackerUI  5      *    $TournamentTrackerUI.CreateTournament   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:TournamentTrackerUI     5        � Title$  CreateTournament��5      $	��650��6    $	��600��6-    � 
ResizeMode$ NoResize=�69   .��5
      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $	��78* �6   �� 5      $	��73* �6   �� 5      $	��49* �6   .+�5   
   �� -   5         ��Name$ selectTeam_listbx��5      $��1��6   $��30,38,30,120q�6:   �� 5   
   $��0��6   $��1��6   $��Create Tournament��62   $
��Left=�6N   $��0,10,0,0q�6i   $	��Top=�6{   $��20(�6�   $��37��6�   $	��178��6�   �� 5   
   $��0��6   $��Tournament Name��6   $
��Left=�67   $��	24,69,0,0q�6R   $	��Top=�6e   $��30��6}   $	��162��6�   �� 5   
   -   5         ��Name$ tournamentNameValue��5      $��Center=�6/   $��	0,106,0,0q�6L   $��TextBox��6_    �� TextWrapping$
 Wrap=�6n   $	��Top=�6�   $	��174��6�   $��23��6�   �� 5   
   $��1��6   $��	Entry Fee��6$   $
��Left=�68   $��
17,159,0,0q�6S   $	��Top=�6g    J� RenderTransformOrigin$ -0.157,0.527&�6   $��99��6�   $��31��6�   �� 5   
   -   5        $ entryFeeValue��5      $
��Left=�6)   $��143,159,0,0q�6D   $
��0.00��6Y   $
 Wrap=�6e   $	��Top=�6y   $��28��6�   $��61��6�   �� 5   
   $��1��6   $��Select Team��6$   $
��Left=�6:   $��17,5,0,0q�6U   $	��Top=�6g   $ 0.653,-1.215&�6   $��28��6�   $��93��6�   $��1��6�   �� 5!   
   -   5         ��Name$ 
AddTeamBtn��5!      $��1��6   $��Add Team��62   $
��Left=�6E   $��52,119,0,60q�6`   $	��144��6u   6�   �� 5"   
   -   5        $ CreatePrizeBtn��5"      $��1��6   $��Create Prize��66   $
��Left=�6M   $��52,169,0,10q�6h   $	��144��6}   6�   �� 5#   
   $��Prizes��6   $
��Left=�6!   $��16,5,0,0q�6<   $	��Top=�6N   $	��100��6f   $��28��6r   $��1��6~   $��1��6�   �� 5$   
   -   5        $ tournamentTeams_ListBx��5$      $��
6,105,6,27q�62   $��1��6F   �� 5%   
   $��Teams / Players��6   $
��Left=�6*   $��6,69,0,0q�6E   $	��Top=�6W   $	��162��6o   $ 
0.296,1.63&�6{   $��1��6�   $��31��6�   �� 5&   
   -   5        $ CreateTournamentBtn��5&      $��Create Tournament��6.   $
��Left=�6J   $��	32,22,0,0q�6e   $	��Top=�6x   $	��148��6�   $��52��6�   $��2��6�   $��1��6�   6�   �� 5'   
   -   5        $ RemoveSelectedTeam_Btn��5'      $��Center=�61   $��	0,117,0,0q�6N   $	��Top=�6a   $��50��6y   $	��114��6�   $ 0.447,2.688&�6�   $��2��6�   .��5(      �� $ 0.735,-1&�6   �� 6:   $�Remove��6>   �� 6N   �� 6Z   $�Selected��6^   6q   5)      �� 5*   
   -	   5        $ RemovePrizes_btn��5*      $��Center=�6+   $��0,66,0,0q�6H   $	��Top=�6Z   $��47��6r   $	��114��6~   $��2��6�   $��1��6�   .��5+      �� $ 0.735,-1&�6   �� 6:   $�Remove��6>   �� 6N   �� 6Z   $�Selected��6^   6q   5,      �� 5/   
   -
   5        $ prizes_ListBx��5/      $��	6,38,6,75q�6)   $��1��6<   $��1��6I   �� 50   
   -   5        	 ��Name$	 CreateTeamLink��50      $��Right=�6(   $��0,211,10,164q�6D   $��96��6Z   $��2��6e   .��51      �� -   5        .�51   5   .�52      �� $�Create Team��6   53      54      5;      5<      