using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TrackerLibrary.Models;
using System.IO;
using TrackerLibrary.DataAccess.TextHelpers;

namespace TrackerLibrary.DataAccess
{
    public class TextConnector : IDataConnection
    {
        private const string PrizesFile = "PrizeModels.csv";
        private const string PeopleFile = "PersonModels.csv";

        public PersonModel CreatePerson(PersonModel model)
        {
            //Load text file
            //Convert text to list<PersonModel>

            List<PersonModel> people = PeopleFile.FullFilePath().LoadFile().ConvertToPersonModels();
            //Find max ID
            int currentId = 1;
            if (people.Count > 0)
            {
                currentId = people.OrderByDescending(x => x.Id).First().Id + 1;
            }
            model.Id = currentId;
            //Add the new record with the new ID (max +1)
            people.Add(model);


            //Convert the people to a list<string>
            //Save the list<string> to the text file
            people.SaveToPeopleFile(PeopleFile);

            return model;
        }

        public PrizeModel CreatePrize(PrizeModel model)
        {

            //Load text file
            //Convert text to list<PrizeModel>

            List<PrizeModel> prizes = PrizesFile.FullFilePath().LoadFile().ConvertToPrizeModels();
            //Find max ID
            int currentId = 1;
            if(prizes.Count>0)
            {
                currentId= prizes.OrderByDescending(x => x.Id).First().Id + 1;
            }
            model.Id = currentId;
            //Add the new record with the new ID (max +1)
            prizes.Add(model);


            //Convert the prizes to a list<string>
            //Save the list<string> to the text file
            prizes.SaveToPrizeFile(PrizesFile);

            return model;
        }
    }
}
