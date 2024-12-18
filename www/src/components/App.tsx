import './App.css';
import TextField from '@mui/material/TextField';
import Box from '@mui/material/Box';

function App() {
  return (
    <div className="App-header">
      <Box
        component="form"
        sx={{ '& .MuiTextField-root': { m: 1, width: '25ch' } }}
        noValidate
        autoComplete="off"
      >
        <TextField id="outlined-required" label="Username" sx={{ label: { color: 'white' }, input: { color: 'white' } }} />
        <TextField id="outlined-required" label="Password" type="password" variant="filled" sx={{ label: { color: 'white' }, input: { color: 'white' } }} />
        
        <p>
          Edit <code>src/App.tsx</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </Box>
    </div>
  );
}

export default App;
