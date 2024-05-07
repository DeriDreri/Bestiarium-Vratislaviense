import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './views/App';
import Stories from './views/Stories.js'
import Ranking from './views/Ranking.js'
import Unlock from './views/Unlock.js'

import {
  createBrowserRouter,
  RouterProvider,
} from "react-router-dom";

const router = createBrowserRouter([
  {
    path: "/",
    element: <App />,
  },
  {
    path: "/map",
    element: <App />,
  },
  {
    path: "/stories",
    element: <Stories />,
  },
  {
    path: "/ranking",
    element: <Ranking />,
  },
  {
    path: "/unlock",
    element: <Unlock />,
  },
]);

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <RouterProvider router={router} />
  </React.StrictMode>
);
