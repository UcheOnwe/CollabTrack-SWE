
import express from 'express';
import { createTask, updateTask, getTasksWithID } from '../resources/sqlTools.mjs';

const router = express.Router();

// '/tasks' Routes
router.get("/tasks/:id", (req, res) => {
  console.log("GET request made to /api/tasks");
  //console.log(req.params)

  function queryCallback(rows) {
    if (rows.length > 0) {
      res.status(200).send(JSON.stringify({foundData: 1, Data: rows}));
    }
    else {
      res.status(404).send(JSON.stringify({foundData: 0, Data: "Info could not be found"}));
    }
  }

  getTasksWithID(req.params.id, queryCallback);
});

router.get("/groups/:id", (req, res) => {
  console.log("GET request made to /api/groups");
  //console.log(req.params)

  function queryCallback(rows) {
    if (rows.length > 0) {
      res.status(200).send(JSON.stringify({foundData: 1, Data: rows}));
    }
    else {
      res.status(404).send(JSON.stringify({foundData: 0, Data: "Info could not be found"}));
    }
  }

  getGroupsWithID(req.params.id, queryCallback);
});


router.post("/tasks", (req, res) => {
  console.log("POST request made to /tasks:")
  console.log(req.body)

  console.log(`METHOD: ${req.body._method}`);

  if (!createTask(req.body)) {
    res.status(500).send("Task could not be created")
  }

  res.status(200).send("Task Created Succesfully")
});


// Dynamic Routes
//router.get("/dashboard/:userEmail", (req, res) => {
//  console.log("Reqeust /dashabord recieved:");
//  console.log(req.params);

//  res.status(200).send("e");
//});

export default router;

