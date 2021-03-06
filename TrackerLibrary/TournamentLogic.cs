﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TrackerLibrary.Models;

namespace TrackerLibrary
{
    public static class TournamentLogic
    {

        //create tournament 4 47:14
        public static void CreateRounds(TournamentModel model)
        {
            List<TeamModel> randomTeams = RandomTeamOrder(model.EnteredTeams);
            int rounds = FindRounds(randomTeams.Count);
            int byes = numberOfByes(rounds, randomTeams.Count);

            model.Round.Add(CreateFirstRound(byes, randomTeams));

            CreateOtherRounds(model, rounds);

        }

        private static void CreateOtherRounds(TournamentModel model, int rounds)
        {
            int round = 2;
            List<MatchupModel> previousRound = model.Round[0];
            List<MatchupModel> currentRound = new List<MatchupModel>();
            MatchupModel currMatchUp = new MatchupModel();

            while(round <= rounds)
            {
                foreach (MatchupModel match in previousRound)
                {
                    currMatchUp.Entries.Add(new MatchupEntryModel { ParentMatchup = match });

                    if (currMatchUp.Entries.Count>1)
                    {
                        currMatchUp.MatchupRound = round;
                        currentRound.Add(currMatchUp);
                        currMatchUp = new MatchupModel();
                    }
                }

                model.Round.Add(currentRound);
                previousRound = currentRound;

                currentRound = new List<MatchupModel>();
                round += 1;
            }
        }

        private static List<MatchupModel> CreateFirstRound (int byes, List<TeamModel> teams)
        {
            List<MatchupModel> output = new List<MatchupModel>();
            MatchupModel curr = new MatchupModel();

            foreach (TeamModel team in teams)
            {
                curr.Entries.Add(new MatchupEntryModel { TeamCompeting = team });

                if(byes > 0 || curr.Entries.Count>1)
                {
                    curr.MatchupRound = 1;

                    output.Add(curr);
                    curr = new MatchupModel();
                    if(byes>0)
                    {
                        byes -= 1;
                    }
                }
            }

            return output;
        }

        private static int numberOfByes(int rounds, int numberOfTeams)
        {
            int output = 0;
            int totalTeams = 1;

            for (int i = 1; i <= rounds; i++)
            {
                totalTeams *= 2;
            }

            output = totalTeams - numberOfTeams;

            return output;
        }

        private static int FindRounds(int teamCount)
        {
            int output = 1;
            int val = 2;

            while (val < teamCount)
            {
                output += 1;
                val *= 2;
            }

            return output;
        }

        private static List<TeamModel> RandomTeamOrder(List<TeamModel> teams)
        {
            return teams.OrderBy(x => Guid.NewGuid()).ToList(); 
        }
    }
}
