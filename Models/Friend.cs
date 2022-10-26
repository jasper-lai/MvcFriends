using System;
using System.ComponentModel.DataAnnotations;

namespace MvcFriends.Models
{
    public class Friend
    {
        public int Id { get; set; }
        public string Name { get; set; } = string.Empty;
        public string Email { get; set; } = string.Empty;
        public string? Mobile { get; set; } = null;
    }
}