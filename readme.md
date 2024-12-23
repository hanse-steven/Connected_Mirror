# Projet de Miroir Connecté

## Prérequis

Pour installer et utiliser ce projet de miroir connecté, vous aurez besoin de :

- **Système d'exploitation** : Debian 12
- **Environnement** : Sans environnement de bureau (mode serveur)

## Installation

1. **Préparer le système** :
   - Installez Debian 12 sur votre machine.
   - Assurez-vous que le système est configuré en mode serveur (sans environnement de bureau).

2. **Télécharger le projet** :
   - Clonez le dépôt du projet depuis GitHub ou téléchargez les fichiers nécessaires.

3. **Installer les dépendances** :
   - Exécutez le script `install.sh` pour installer toutes les dépendances nécessaires

```bash
# Cloner le dépôt (si applicable)
git clone https://github.com/hanse-steven/Connected_Mirror.git
cd Connected_Mirror

# Exécuter le script d'installation
chmod +x install.sh
./install.sh
```

4. **Configuration de Openbox - rc.xml** :
   Editez le fichier ~/.config/openbox/rc.xml
   
   - Changez le thème pour un ayant des bordures noires.

```xml
<theme>
    <name>Nightmare</name>
    ...
</theme>
```

   - Ajoutez ceci dans la section pour les applications. _Permet de désafficher la barre de titre et la bordure_

```xml
<application class="Chromium*">
    <decor>no</decor>
    <keepBorder>no</keepBorder>
</application>
```

5. **Configuration de Openbox - autostart** : 

   - Editez le fichier ~/.config/openbox/autostart et remplacez le contenu par ceci.

```bash
picom &
feh --bg-scale ~/.config/openbox/black.png &
(sleep 10; volumeicon) &
nm-applet &
```


6. **Configuration de l'Autologin**

   - Editez le fichier /etc/lxdm/default.conf, décommentez autologin et indiquez votre nom d'utilisateur

```conf
[base]
## uncomment and set autologin username to enable autologin
autologin=<VOTRE_NOM_UTILISATEUR>
```

7. **La suite** :
WORK IN PROGRESS