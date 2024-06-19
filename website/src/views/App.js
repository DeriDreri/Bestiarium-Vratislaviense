import './App.css';
import NavBar from './NavBar.js'
import CreaturesList from './CreaturesList.js'
import Map from './Map.js'
import useFetch from '../controler/useFetch.js'

function App() {

  const { error, isPending, data: creaturesList } = useFetch('http://localhost:8000/creatures')

  return (
    <div className="App">
      <NavBar isLogged={false} />
      {!isPending  && <CreaturesList isMapView={true} creatures={creaturesList}/>}
      <Map />
    </div>
  );
}

export default App;
