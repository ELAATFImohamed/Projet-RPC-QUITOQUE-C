struct client{
    int id;
    char nom[10];
    char prenom[10];
    int tele;
    char adresse[20];
    long carteBancaire;
};
struct date{
	int day;
	int mounth;
	int year;
};

struct commande{
	int id;
	int idPanier;
	date date;
	int qte;
	char etat[1];
};
struct livraison{
	int id;
	int idCommande;
	date date;
	char adresse[20];
	char type[10];
};

struct recette{
    int id;
    char nom[10];
    char type[10];
    char ingrediant[20];
    int nbPart; 
    double prix;
    char disponible[1];
};

struct panier{
	int id;
	int idC;
	int id_recette[10];
	double total; 
};
struct recettes{
	recette listeRecette[10];
	int nbRecette;
};

struct type_chaine {
	char chaine[10];
};

program QUITOQUE_PROG{
	version QUITOQUE_1{
	void INIT() = 1;
	int ajout_client(client) = 2;
     	client afficher_client(int)=3;
        int modifier_client(client)=4;
        recettes rechercher_recette(type_chaine)=5;   
        int ajout_au_panier(panier) = 6;
        panier afficher_panier(int) = 7;
        int supprimer_recette_au_panier(panier)=8;
        int effectuer_commande(commande)=9;
        commande afficher_commande(int)=10;
        int programmer_livraison(livraison)=11;
        

	} = 1;
}= 0x23456789;
