using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Lab3_IT_186001.Models;

namespace Lab3_IT_186001.Controllers
{
    public class FriendController : Controller
    {  
        private static List<FriendModel> friends = new List<FriendModel>() {
        new FriendModel(){Id=0,Name="Ana",MestoZiveenje="Bitola" },
        new FriendModel(){Id=1,Name="Marija",MestoZiveenje="Skopje" },
        new FriendModel(){Id=2,Name="Darko",MestoZiveenje="Ohrid" }
        };

        // GET: Friend
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Prikaz()
        {
            return View(friends);
        }

        public ActionResult AddNewFriend()
        {
            FriendModel model = new FriendModel();
            return View(model);
        }
        [HttpPost]
        public ActionResult AddNewFriend(FriendModel model)
        {
            if (!ModelState.IsValid)
            {
                return View(model);
            }
            friends.Add(model);
            return View("Prikaz",friends);
        }

        public ActionResult EditFriend(int id)
        {
            FriendModel model = friends.FirstOrDefault(z => z.Id == id);
            return View(model);
        }
        [HttpPost]
        public ActionResult EditFriend(FriendModel model)
        {
            if (!ModelState.IsValid)
            {
                return View(model);
            }
            FriendModel update = friends.FirstOrDefault(z=>z.Id==model.Id);
            update.Id = model.Id;
            update.Name = model.Name;
            update.MestoZiveenje = model.MestoZiveenje;
            return View("Prikaz",friends);
        }

        public ActionResult DeleteFriend(int id)
        {
            FriendModel model = friends.FirstOrDefault(z=>z.Id==id);
            friends.Remove(model);
            return View("Prikaz",friends);
        }


    }
}