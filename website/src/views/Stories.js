import CreaturesList from './CreaturesList.js'
import NavBar from './NavBar.js'
import './Stories.css'

function Stories() {
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
    <div className="Stories">
      <NavBar isLogged={true} />
      <CreaturesList isMapView={true} creatures={creaturesList}/>
    </div>
  );
}

export default Stories;
