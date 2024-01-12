function App() {
    return (
        <div>
            <Tweet
                name="Patrick Star"
                username="MayonnaiseTheInstrument"
                date={new Date().toDateString()}
                message="Noooooo this is PATRICK!"
            />
            <Tweet
                name="Ralph Wiggum"
                username="SweetPrince"
                date={new Date().toDateString()}
                message="Me fail English? Thats unpossible"
            />
            <Tweet
                name="Ron Stoppable"
                username="NachoLife24"
                date={new Date().toDateString()}
                message="Boooyaaaah!"
            />
        </div>
    );
}