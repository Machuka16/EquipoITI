using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace pruebaTryCLOTHES001
{
    public partial class Form2Genero : Form
    {
        public Form2Genero()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form3Silueta form3Silueta = new Form3Silueta();
            form3Silueta.Show();
            this.Hide();
        }
    }
}
