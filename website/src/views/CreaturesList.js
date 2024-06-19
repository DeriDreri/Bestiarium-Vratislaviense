import Creature from "./Creature.js"
const CreaturesList = ({isMapView, creatures}) => {
  return (
    <div className="creatures-list">
      <form> 
        <input type="text"/>
        <button>Szukaj</button>
      </form>
      {
        creatures.creatures.map(creature => (
        <Creature isMapView={isMapView} name={creature.name} location={creature.location.lat + ',' + creature.location.lon} historiesAmount={creature.storiesAmount} />
        ))
      }
      <div style={{height:10+"em"}}>
      </div>
    </div>
  );
}
export default CreaturesList;

