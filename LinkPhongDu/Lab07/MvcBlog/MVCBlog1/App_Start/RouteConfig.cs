﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace MVCBlog1
{
	public class RouteConfig
	{
		public static void RegisterRoutes(RouteCollection routes)
		{

			routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

			routes.MapRoute(
				name: "Default",
				url: "{controller}/{action}/{id}",
				defaults: new { controller = "BlogSets", action = "Index", id = UrlParameter.Optional }
			);
			routes.MapRoute(
				name: "BlogSets",
				url: "{controller}/{action}/{search}/{description}/{owner}"
			);
			routes.MapRoute(
				name: "PostSets",
				url: "{controller}/{action}/{search}/{fromDate}/{toDate}/{blogID}"
			);
		}
	}
}
