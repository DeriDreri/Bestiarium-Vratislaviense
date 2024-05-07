const Creature = ({isMapView, name, location, historiesAmount }) => {
  return (
    <div className="creature">
      <h2>{name}</h2>
      {isMapView ? <p>{location}</p> : <p>{historiesAmount}</p>}
    </div>
  );
}

export default Creature;
