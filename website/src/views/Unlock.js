import NavBar from './NavBar.js'
import './Unlock.css'
function Unlock() {
  return (
    <div className="Unlock">
      <NavBar isLogged={true} />
      <form>
        <h1>Nazwa kryptydy</h1>
        <input></input>
        <h1>Kod</h1>
        <input></input>
        <div style={{height:1+"em"}} />
        <button>Odblokuj</button>
      </form>
    </div>
  );
}

export default Unlock;
