const NavBar = ({isLogged}) => {
  return (
    <nav className="navbar">
      <div className="navbar-left">
        <a href="/map">Mapa</a>
        <a href="/stories">Historie</a>
        <a href="/ranking">Ranking</a>
      </div>
      { isLogged ? <div className="navbar-right">
        <a href="/unlock">Odblokuj stworzenie</a>
        <a href="/logout">Wyloguj</a>
      </div>
        :
      <div className="navbar-right">
        <a href="/login">Logowanie</a>
        <a href="/register">Rejestracja</a>
      </div>
      }
    </nav>
  );
}

export default NavBar;
