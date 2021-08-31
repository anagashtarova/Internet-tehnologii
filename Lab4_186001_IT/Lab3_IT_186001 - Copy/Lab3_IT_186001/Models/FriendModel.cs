using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Lab3_IT_186001.Models
{
    public class FriendModel
    {
        [Required]
        [Range(0,200,ErrorMessage ="Dozvoleni se samo broevi od 0 do 200!!!")]
        [Key]
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
        [Required]
        [Display(Name="Mesto na ziveenje")]
        public string MestoZiveenje { get; set; }
    }
}