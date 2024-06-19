import CreaturesList from './CreaturesList.js'
import NavBar from './NavBar.js'
import './Stories.css'
import useFetch from '../controler/useFetch.js'

function Stories() {

  const { error, isPending, data: creaturesList } = useFetch('http://localhost:8000/creatures')

  return (
    <div className="Stories">
      <NavBar isLogged={false} />
      {!isPending && <CreaturesList isMapView={false} creatures={creaturesList}/>}
    </div>
  );
}

export default Stories;
