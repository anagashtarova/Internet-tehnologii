﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Lab3_IT_186001.Models
{
    public class FriendContext:DbContext
    {
        public DbSet<FriendModel> Friends { get; set; }
        public FriendContext():base("DefaultConnection") { }
        public static FriendContext Create()
        {
            return new FriendContext();
        }

    }
}