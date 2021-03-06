﻿using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TrackerLibrary.Models;

namespace TrackerLibrary.DataAccess
{
    public class SqlConnector : IDataConnection
    {
        private const string db = "TournamentTracker";
        public PersonModel CreatePerson(PersonModel model)
        {
            using IDbConnection connection = new System.Data.SqlClient.SqlConnection(GlobalConfig.CnnString(db));
            var p = new DynamicParameters();
            p.Add("@FirstName", model.FirstName);
            p.Add("@LastName", model.LastName);
            p.Add("@EmailAddress", model.EmailAddress);
            p.Add("@CellphoneNumber", model.CellphoneNumber);
            p.Add("@id", 0, dbType: DbType.Int32, direction: ParameterDirection.Output);

            connection.Execute("dbo.spPeople_Insert", p, commandType: CommandType.StoredProcedure);
            model.Id = p.Get<int>("@id");
            return model;
        }


        /// <summary>
        /// saves a new prize to the database
        /// </summary>
        /// <param name="model"></param>
        /// <returns>the prize info, including the unique id</returns>
        public PrizeModel CreatePrize(PrizeModel model)
        {
            //model.Id = 1;
            using (IDbConnection connection = new System.Data.SqlClient.SqlConnection(GlobalConfig.CnnString(db)))
            {
                var p = new DynamicParameters();
                p.Add("@PlaceNumber", model.PlaceNumber);
                p.Add("@PlaceName", model.PlaceName);
                p.Add("@PrizeAmount", model.PrizeAmount);
                p.Add("@PrizePercentage", model.PrizePercentage);
                p.Add("@id", 0, dbType: DbType.Int32, direction: ParameterDirection.Output);

                connection.Execute("dbo.spPrizes_Insert", p, commandType: CommandType.StoredProcedure);
                model.Id = p.Get<int>("@id");
            }
            return model;
        }
        public TeamModel CreateTeam(TeamModel model)
        {
            using IDbConnection connection = new System.Data.SqlClient.SqlConnection(GlobalConfig.CnnString(db));
            var p = new DynamicParameters();
            p.Add("@TeamName", model.TeamName);
            p.Add("@id", 0, dbType: DbType.Int32, direction: ParameterDirection.Output);

            connection.Execute("dbo.sp_Teams_Insert", p, commandType: CommandType.StoredProcedure);
            model.Id = p.Get<int>("@id");

            foreach (PersonModel tm in model.TeamMembers)
            {
                p = new DynamicParameters();
                p.Add("@TeamId", model.Id);
                p.Add("@PersonId", tm.Id);

                connection.Execute("dbo.sp_TeamMembers_Insert", p, commandType: CommandType.StoredProcedure);
            }
            return model;
        }
        public void CreateTournament(TournamentModel model)
        {
            using IDbConnection connection = new System.Data.SqlClient.SqlConnection(GlobalConfig.CnnString(db));
            SaveTournament(connection, model);
            SaveTournamentPrizes(connection, model);
            SaveTournamentEntries(connection, model);
            SaveTournamentRounds(connection, model);
            //return model;
        }

        private void SaveTournament(IDbConnection connection, TournamentModel model)
        {
            var p = new DynamicParameters();
            p.Add("@TournamentName", model.TournamentName);
            p.Add("@EntryFee", model.EntryFee);
            p.Add("@id", 0, dbType: DbType.Int32, direction: ParameterDirection.Output);
            connection.Execute("dbo.spTournaments_Insert", p, commandType: CommandType.StoredProcedure);
            model.Id = p.Get<int>("@id");
        }
        private void SaveTournamentPrizes(IDbConnection connection, TournamentModel model)
        {
            foreach (PrizeModel pz in model.Prizes) 
            {
                var p = new DynamicParameters();
                p.Add("@TournamentId", model.Id);
                p.Add("@PrizeId", pz.Id);
                p.Add("@id", 0, dbType: DbType.Int32, direction: ParameterDirection.Output);
                connection.Execute("dbo.sp_TournamentPrizes_Insert", p, commandType: CommandType.StoredProcedure);
            }
        }
        private void SaveTournamentEntries(IDbConnection connection, TournamentModel model)
        {
             foreach (TeamModel tm in model.EnteredTeams)
            {
                var p = new DynamicParameters();
                p.Add("@TournamentId", model.Id);
                p.Add("@TeamId", tm.Id);
                p.Add("@id", 0, dbType: DbType.Int32, direction: ParameterDirection.Output);
                connection.Execute("dbo.sp_TournamentEntries_Insert", p, commandType: CommandType.StoredProcedure);
            }
        }
        private void SaveTournamentRounds(IDbConnection connection, TournamentModel model)
        {
            //List<List<MatchupModel>>Rounds
            //List<MatchupEntryModel> Entries

            // loop thru the rounds 
            foreach (List<MatchupModel> round in model.Rounds)
            {
                //loop thru the matchups
                foreach (MatchupModel matchup in round)
                {
                    // save the matchup
                    var p = new DynamicParameters();
                    p.Add("@TournamentId", model.Id);  
                    p.Add("@MatchupRound", matchup.MatchupRound);
                    p.Add("@id", 0, dbType: DbType.Int32, direction: ParameterDirection.Output);

                    connection.Execute("dbo.sp_Matchups_Insert", p, commandType: CommandType.StoredProcedure);
                    matchup.Id = p.Get<int>("@id");

                    //loop thru the entries and save
                    foreach (MatchupEntryModel entry in matchup.Entries)
                    {
                        var q = new DynamicParameters();
                        q.Add("@MatchupId", matchup.Id);
                        //p.Add("@ParentMatchupId", entry.ParentMatchup.Id);
                        if (entry.ParentMatchup == null) {q.Add("@ParentMatchupId", null);}
                        else {q.Add("ParentMatchupId", entry.ParentMatchup.Id);}

                        if(entry.TeamCompeting == null) {p.Add("TeamCompetingId", null);}
                        else { q.Add("TeamCompetingId", entry.TeamCompeting.Id);}
                        //p.Add("@TeamCompetingId", entry.TeamCompeting.Id);
                        p.Add("@id", 0, dbType: DbType.Int32, direction: ParameterDirection.Output);

                        connection.Execute("dbo.sp_MatchupEntries_Insert", q, commandType: CommandType.StoredProcedure);
                        
                    }
                }

            }    
        }

        public List<PersonModel> GetPerson_All()
        {
            List<PersonModel> output;
            using (IDbConnection connection = new System.Data.SqlClient.SqlConnection(GlobalConfig.CnnString(db)))
            {
                output = connection.Query<PersonModel>("dbo.sp_People_GetAll").ToList();
            }
            return output;

        }
        public List<TeamModel> GetTeam_All()
        {
            List<TeamModel> output;
            using (IDbConnection connection = new System.Data.SqlClient.SqlConnection(GlobalConfig.CnnString(db)))
            {
                output = connection.Query<TeamModel>("dbo.sp_Team_GetAll").ToList();
                foreach (TeamModel team in output)
                {
                    var p = new DynamicParameters();
                    p.Add("@TeamId", team.Id);

                    team.TeamMembers = connection.Query<PersonModel>("dbo.sp_TeamMembers_GetByTeam", p, commandType: CommandType.StoredProcedure).ToList();
                }
            }
            return output;
        }

        public List<TournamentModel> GetTournaments_All()
        {
            List<TournamentModel> output;
            using (IDbConnection connection = new System.Data.SqlClient.SqlConnection(GlobalConfig.CnnString(db)))
            { 
                output = connection.Query<TournamentModel>("dbo.sp_Tournaments_GetAll").ToList();
                var p = new DynamicParameters();
                foreach (TournamentModel t in output)
                {
                    //populate prizes
                    p = new DynamicParameters();
                    p.Add("@TournamentId", t.Id);
                    t.Prizes = connection.Query<PrizeModel>("dbo.spPrizes_GetBy_Tournament", p, commandType: CommandType.StoredProcedure).ToList();
                    //populate teams
                    p = new DynamicParameters();
                    p.Add("@TournamentId", t.Id);
                    t.EnteredTeams = connection.Query<TeamModel>("dbo.Sp_Team_GetByTournament", p, commandType: CommandType.StoredProcedure).ToList();
                    foreach (TeamModel team in t.EnteredTeams)
                    {
                        p = new DynamicParameters();
                        p.Add("@TeamId", team.Id);
                        team.TeamMembers = connection.Query<PersonModel>("dbo.sp_TeamMembers_GetByTeam", p, commandType: CommandType.StoredProcedure).ToList();
                    }
                    //Populate Rounds
                    p = new DynamicParameters();
                    p.Add("@TournamentId", t.Id);
                    List<MatchupModel> matchups = connection.Query<MatchupModel>("dbo.sp_Matchups_GetBy_Tournament", p, commandType: CommandType.StoredProcedure).ToList();
                    foreach (MatchupModel m in matchups)
                    {
                        p = new DynamicParameters();
                        p.Add("@MatchupId", m.Id);

                        //Populate Rounds
                        m.Entries = connection.Query<MatchupEntryModel>("dbo.sp_MatchupEntries_GetByMatchup", p, commandType: CommandType.StoredProcedure).ToList();
                        //populate each matchup entry
                        //populate each matchup
                        List<TeamModel> allTeams = GetTeam_All();
                        if(m.WinnerId > 0)
                        {
                            m.Winner = allTeams.Where(x => x.Id == m.WinnerId).First();
                        }
                        foreach (var me in m.Entries)
                        {
                           if (me.TeamCompetingId > 0)
                            {
                                me.TeamCompeting = allTeams.Where(x => x.Id == me.TeamCompetingId).First();
                            }
                           if(me.ParentMatchupId > 0)
                            {
                                me.ParentMatchup = matchups.Where(x => x.Id == me.ParentMatchupId).First();
                            }
                        }
                    }
                    //Add Rounds List of matchup models
                    List<MatchupModel> currentRow = new List<MatchupModel>();
                    int currentRound = 1;
                    foreach (MatchupModel m in matchups)
                    {
                        if(m.MatchupRound > currentRound)
                        {
                            t.Rounds.Add(currentRow);
                            currentRow = new List<MatchupModel>();
                            currentRound += 1;
                        }
                        currentRow.Add(m);
                    }
                    t.Rounds.Add(currentRow);
                }
            }
            return output;

            
        }

        public void UpdateMatchup(MatchupModel model)
        {
            using(IDbConnection connection = new System.Data.SqlClient.SqlConnection(GlobalConfig.CnnString(db)))
            {
                //dbo.sp_Matchups_Update
                var p = new DynamicParameters();
                p.Add("@id", model.Id);
                p.Add("@WinnerId", model.Winner.Id);

                connection.Execute("dbo.sp_Matchups_Update", p, commandType: CommandType.StoredProcedure);
                //dbo.sp_MatchupEntries_Update
                foreach (MatchupEntryModel me in model.Entries)
                {
                    p = new DynamicParameters();
                    p.Add("@id", me.Id);
                    p.Add("@TeamCompetingId", me.TeamCompeting.Id);
                    p.Add("@Score", me.Score);

                    connection.Execute("dbo.sp_MatchupEntries_Update", p, commandType: CommandType.StoredProcedure);
                }
            }



        }
    }
}

