using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Kassenprogramm
{
    static class Program
    {
        /// <summary>
        /// Der Haupteinstiegspunkt für die Anwendung.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form1());
        }

        //Hauptbildschirm
        //hier sollen Artikel direkt verkauft werden können
        //auch per telefonbestellung
        //ein Link zu artikel suchen soll möglich sein
        //im Hauptbildschirm sollen ebenfalls kunden und mitarbeiter einsehbar sein, wenn sie die berechtigungen haben
    }
}
