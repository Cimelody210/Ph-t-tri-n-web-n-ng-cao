//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MVCBlog1.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class PostSet
    {
        public int PostId { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public int BlogBlogId { get; set; }
		public string BlogName { get; set; }
		public Nullable<System.DateTime> CreatedDate { get; set; }
    
        public virtual BlogSet BlogSet { get; set; }
    }
}
