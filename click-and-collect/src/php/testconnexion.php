<?php
    unset($_GET);
    
    if( isset($_POST['mail']) && isset($_POST['mdp']) ) {
    
        echo '<?xml version="1.0"?>'."\n";
        echo "<login>\n";
    
    //Le 1er champ est  le serveur de la base de données.(ici clickandcollect)
    //Le 2eme représente le nom d'utilisateur de la base de données.(ici root)
    //Le 3éme represente  le mot de passe pour accéder à cette base de données avec cette   utilisateur.
        if (!@mysql_connect('clickandcollect', 'root', 'root')) { error(1); }
    
	//  le nom d ela base de données : Users
	    if (!mysql_select_db('Users')) { error(2); }
    
        if(get_magic_quotes_gpc()) {
            $login = stripslashes($_POST['mail']);
            $pass  = stripslashes($_POST['mdp']);
        } else {
            $login = $_POST['mail'];
            $pass  = $_POST['mdp'];
        }
    
        unset($_POST);
        
        $kid = login($login, $pass);
        if($kid == -1) { 
            error(3); 
        } else {
            printf('    <user id="%d"/>'."\n",$kid);
        }
        echo "</login>";
    }

    function error($ec) {
        printf('    <error value="%d"/>'."\n".'</login>',$ec);
        die();
    }

    function login($login, $pass) {
        $select = "
        SELECT `idUser
         FROM Users WHERE mail = '%s' 
         AND mdp = '%s'
            ";
            // test : SELECT `idUser` FROM Users WHERE mail = 'ulysseperret@orange.fr' AND mdp = 'test123'
            
		$fixedlogin = mysql_real_escape_string($login);
		$fixedpass  = mysql_real_escape_string($pass);
		$query = sprintf($select, $fixedlogin, $fixedpass);

        $result = mysql_query($query);
        if(mysql_num_rows($result) != 1) { return -1; }    
        $row = mysql_fetch_row($result);
        return $row[0];
    }
?>