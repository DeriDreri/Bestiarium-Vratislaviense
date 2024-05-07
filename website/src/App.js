import './App.css';
import NavBar from './NavBar.js'
import CreaturesList from './CreaturesList.js'
import Map from './Map.js'

function App() {
  let creaturesList = [
    {
      name: "Test1",
      location: "TestLocation",
      historiesAmount: "1"
    },
    {
      name: "Test2",
      location: "TestLocation",
      historiesAmount: "2"
    },
    {
      name: "Test1",
      location: "TestLocation",
      historiesAmount: "1"
    },
    {
      name: "Test1",
      location: "TestLocation",
      historiesAmount: "1"
    },
    {
      name: "Test2",
      location: "TestLocation",
      historiesAmount: "2"
    },
    {
      name: "Test1",
      location: "TestLocation",
      historiesAmount: "1"
    },
    {
      name: "Test1",
      location: "TestLocation",
      historiesAmount: "1"
    },
    {
      name: "Test2",
      location: "TestLocation",
      historiesAmount: "2"
    },
    {
      name: "Test1",
      location: "TestLocation",
      historiesAmount: "1"
    },
    {
      name: "Test1",
      location: "TestLocation",
      historiesAmount: "1"
    },
    {
      name: "Test2",
      location: "TestLocation",
      historiesAmount: "2"
    },
    {
      name: "Test1",
      location: "TestLocation",
      historiesAmount: "1"
    }

  ]
  return (
    <div className="App">
      <NavBar isLogged={true} />
      <CreaturesList isMapView={true} creatures={creaturesList}/>
      <Map />
    </div>
  );
}

export default App;
