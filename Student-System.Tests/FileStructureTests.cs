using System;
using System.IO;
using System.Linq;
using System.Xml.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Student_System.Tests
{
    [TestClass]
    public class FileStructureTests
    {
        private static string FindRepoRoot()
        {
            var dir = new DirectoryInfo(AppDomain.CurrentDomain.BaseDirectory);
            while (dir != null)
            {
                if (File.Exists(Path.Combine(dir.FullName, "Student-System.sln")))
                {
                    return dir.FullName;
                }
                dir = dir.Parent;
            }

            Assert.Fail("Could not locate repository root (Student-System.sln).");
            return string.Empty;
        }

        [TestMethod]
        public void RequiredPagesExist()
        {
            var root = FindRepoRoot();
            var required = new[]
            {
                "Home.aspx",
                "Help.aspx",
                "Admin Login.aspx",
                "Admin password.aspx",
                "Admin sign up.aspx",
                "Student login.aspx",
                "Student password.aspx",
                "Student sign up.aspx",
                "site.Master",
                "Web.config"
            };

            foreach (var path in required)
            {
                Assert.IsTrue(File.Exists(Path.Combine(root, path)), $"Missing required file: {path}");
            }
        }

        [TestMethod]
        public void WebConfig_IsValidXml()
        {
            var root = FindRepoRoot();
            var configPath = Path.Combine(root, "Web.config");
            Assert.IsTrue(File.Exists(configPath), "Web.config is missing.");

            var xml = XDocument.Load(configPath);
            Assert.IsNotNull(xml.Root, "Web.config root element is missing.");
        }

        [TestMethod]
        public void AscxPages_AreNotEmpty()
        {
            var root = FindRepoRoot();
            var aspx = Directory.GetFiles(root, "*.aspx", SearchOption.TopDirectoryOnly);
            Assert.IsTrue(aspx.Length > 0, "No ASPX files found.");

            var empty = aspx.Where(path => new FileInfo(path).Length == 0).ToArray();
            Assert.AreEqual(0, empty.Length, "Found empty ASPX files.");
        }
    }
}
