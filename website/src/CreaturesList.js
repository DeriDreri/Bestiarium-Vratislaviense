import Creature from "./Creature.js"
const CreaturesList = ({isMapView, creatures}) => {
  return (
    <div className="creatures-list">
      <form> 
        <input type="text"/>
        <button>Szukaj</button>
      </form>
      {
        creatures.map(creature => (
        <Creature isMapView={true} name={creature.name} location={creature.location} historiesAmount={creature.historiesAmount} />
        ))
      }
    </div>
  );
}
export default CreaturesList;

