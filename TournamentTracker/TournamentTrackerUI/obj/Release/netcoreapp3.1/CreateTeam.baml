   M S B A M L   `   `   `  ���� N  JTournamentTrackerUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:TournamentTrackerUITournamentTrackerUI  $    TournamentTrackerUI.CreateTeam   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     3local!clr-namespace:TournamentTrackerUI       � Title$  
CreateTeam��$	��600��$	��700��.���  � ColumnDefinitions �� $
��211* ��� $
��239* � � RowDefinitions �� $	��181 ��� $	��619 �.+��� $��Create Team��$
��Left=�$��	10,10,0,0q�$	��Top=�$��20(�$��37��$	��118���� $��Team Name: ��$
��Left=�$��	27,52,0,0q�$	��Top=�$��30��$	��102���� -    ��Name$ teamName_textbx��$
��Left=�$��
184,55,0,0q�$��
enter name�� �� TextWrapping$
 Wrap=�$	��Top=�$	��165��$��24��$��2���� -    ��Name$ selectTeamMember_dropdown��$
��Left=�$��
184,90,0,0q�$	��Top=�$	��165��$��22��$��2���� -    ��Name$ addMember_Btn��$��
Add Member��$
��Left=�$��106,126,0,0q�$	��Top=�$��26��$	��106�� J� RenderTransformOrigin$ 0.573,-1.316&��� $��Create New Member��$��10,33,10,285q�$��1��.���� $��	30,0,18,0q�$	��263��.+��� $��
First Name��$	��106��$
��Left=��� -   $ firstName_textbx��$��first��$
 Wrap=�$	��176��$
��Left=��� $��	Last Name��$	��104��$
��Left=��� -   $ lastName_textbx��$
��last��$
 Wrap=�$	��176��$
��Left=��� $��E-mail��$	��104��$
��Left=��� -   $ email_textbx��$��
you@me.com��$
 Wrap=�$	��176��$
��Left=��� $��	Cellphone��$	��104��$
��Left=��� -   $ cellphone_textbx��$��867-5309��$
 Wrap=�$	��176��$
��Left=��� -   $ CreateMemberField��$��Create Member:��$	��138��$��10,10,10,10q��� -	    ��Name$ teamMember_ListBx��$��42,33,42,285q�$ 0.5,0.5&�$��1��$��1���� -
   $ createTeam_Btn��$��Create Team��$
��Left=�$��218,353,0,0q�$	��Top=�$��34��$	��146��$��1��$��2���� -   $ removeSelected_Btn��$
��Left=�$��
394,79,0,0q�$	��Top=�$��46��$��83��$��1��$��1��.���� $ 0.735,-1&�Remove�� 
Selected�� $��
27,84,96,0q�$��Select Team Member:��$
��Wrap=�$	��Top=�$��28��$��16(�$��0��