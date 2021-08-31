using System;
using System.Collections.Generic;

namespace ITLab1Zad1
{
    class Salter
    {
        public int broj;
        public int kartiBroj;
        public Karta[] karta;
        public int i;

        public Salter(int broj)
        {
            this.broj = broj;
            this.kartiBroj = 0;
            this.i = 0;
            this.karta = new Karta[20];
        }
        public void prodadenaKarta()
        {
            kartiBroj++;
        }
        public void dodajKarta(Karta k)
        {
            karta[i] = k;
            i++;
        }


    }
    class Klient
    {
        public String ime;
        public String prezime;
        public int godini;

        public Klient(String ime,String prezime,int godini)
        {
            this.ime = ime;
            this.prezime = prezime;
            this.godini = godini;
        }
    }
    class Karta
    {
        public Klient klient;
        public Destinacii destinacija;
        public DateTime vreme;

        public Karta(Klient klient, Destinacii destinacija, DateTime vreme)
        {
            this.klient = klient;
            this.destinacija = destinacija;
            this.vreme = vreme;
        }
    }
    class Destinacii
    {
        public String ime;
        public int cena;

        public Destinacii(String ime)
        {
            this.ime = ime;
            this.cena = ime.Length*2000;
        }

    }

    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("---Turisticka agencija World---");

            Salter[] l = new Salter[3];
            l[0] = new Salter(1);
            l[1] = new Salter(2);
            l[2] = new Salter(3);

            Destinacii[] lista = new Destinacii[10];

            lista[0] = new Destinacii("Rim");
            lista[1] = new Destinacii("London");
            lista[2] = new Destinacii("Tokio");
            lista[3] = new Destinacii("Sofija");
            lista[4] = new Destinacii("Istambul");
            lista[5] = new Destinacii("Toronto");
            lista[6] = new Destinacii("Majami");
            lista[7] = new Destinacii("Zagreb");
            lista[8] = new Destinacii("Belgrad");
            lista[9] = new Destinacii("Moskva");

            int brKlienti = 0;

            Console.WriteLine("Izberete edna opcija od menito:");

            while (true)
            {
                Console.WriteLine("1. Usluzi go klientot\n2.Prodadeni karti na salterot\n3.Vkupen promet na salterot\n4.Site prodadeni karti na agencijata, organizirani po salter\n5.Vkupen promet na agencijata\n6.Uspesnost na agencijata\n7.Izlez");
                int broj=Convert.ToInt32(Console.ReadLine());
                
                if(broj==1)
                {
                    String [] niza=Console.ReadLine().Split(" ");
                    Klient klient = new Klient(niza[0],niza[1],Convert.ToInt32(niza[2]));
                    brKlienti++;

                    String dest = niza[3];
                    int brSalter=Convert.ToInt32(niza[4]);

                    if (brSalter != 1 && brSalter != 2 && brSalter != 3)
                    {
                        Console.WriteLine("Ne postoi ponudeniot salter!!!");
                       // break;
                    }
                    else
                    {
                        int flag = 0;

                        for (int i = 0; i < lista.Length; i++)
                        {
                            if (lista[i].ime.Equals(dest))
                            {
                                Karta karta = new Karta(klient, lista[i], DateTime.Now);
                                l[brSalter].dodajKarta(karta);
                                l[brSalter].prodadenaKarta();
                                flag = 1;
                                Console.WriteLine("Rezervirana e karta do baranata destinacija!");
                            }
                        }
                        if (flag == 0)
                        {
                            Console.WriteLine("Ne postoi prevoz do baranata destinacija!!!");
                         //   break;
                        }
                    }
                    
                }

                else if (broj == 2)
                {
                    int brSalter = Convert.ToInt32(Console.ReadLine());

                    DateTime vremeOd = Convert.ToDateTime(Console.ReadLine());
                    DateTime vremeDo = Convert.ToDateTime(Console.ReadLine());

                    for(int k = 0; k < l[brSalter].i; k++)
                    {
                        if (vremeOd <= l[brSalter].karta[k].vreme && l[brSalter].karta[k].vreme <= vremeDo)
                        {
                            Console.WriteLine(l[brSalter].karta[k].klient.ime+" "+ l[brSalter].karta[k].klient.prezime+" "+ l[brSalter].karta[k].klient.godini+" "+ l[brSalter].karta[k].destinacija.ime+" "+ l[brSalter].karta[k].destinacija.cena);
                        }
                    }
  
                }
                else if (broj == 3)
                {

                    int brSalter = Convert.ToInt32(Console.ReadLine());

                    DateTime vremeOd = Convert.ToDateTime(Console.ReadLine());
                    DateTime vremeDo = Convert.ToDateTime(Console.ReadLine());
                    int suma = 0;
                    for (int k = 0; k < l[brSalter].i; k++)
                    {
                        if (vremeOd <= l[brSalter].karta[k].vreme && l[brSalter].karta[k].vreme <= vremeDo)
                        {
                            suma += l[brSalter].karta[k].destinacija.cena;
                        }
                    }

                    Console.WriteLine("Sumata na prodadeni karti za vneseniot salter e "+suma);

                }
                else if (broj == 4)
                {

                    DateTime vremeOd = Convert.ToDateTime(Console.ReadLine());
                    DateTime vremeDo = Convert.ToDateTime(Console.ReadLine());

                    for (int k = 0; k < 3; k++)
                    {
                        Console.WriteLine("Prodadeni karti na salterot "+(k+1));

                        for (int p = 0; p < l[k].i; p++)
                        {
                            if (vremeOd <= l[k].karta[p].vreme && l[k].karta[p].vreme <= vremeDo)
                            {
                                Console.WriteLine(l[k].karta[p].klient.ime + " " + l[k].karta[p].klient.prezime + " " + l[k].karta[p].klient.godini + " " + l[k].karta[p].destinacija.ime + " " + l[k].karta[p].destinacija.cena);
                            }


                        }

                    }


                }

                else if (broj == 5)
                {
                    int suma = 0;
                    for (int i=0;i<3;i++)
                    {
                        for (int j=0;j<l[i].i;j++)
                        {
                            suma += l[i].karta[j].destinacija.cena;
                        }
                    }

                    Console.WriteLine("Vkupniot promet e "+suma);
                }
                else if (broj == 6)
                {
                    int b = 0;

                    for (int j = 0; j < 3; j++)
                    {
                        b += l[j].kartiBroj;
                    }
                    

                    float u = (float) b/brKlienti;
                    Console.WriteLine("Uspesnosta na agencijata e "+u);
                }
                else if (broj==7)
                {

                    break;
                }
                else
                {
                    Console.WriteLine("Ne vnesovte validna opcija!!!");
                }
            }


        }
    }
}
