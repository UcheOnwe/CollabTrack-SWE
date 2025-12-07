
const PORT = 6767;

// Adding events for settings the important variables
window.addEventListener("load", setVars);
window.addEventListener("load", setUIWithUserData)

// Endpoint
// (If this were a serious product we would have this endpoint be a proxy that the server is connected to for security purposes)
const Endpoint_taskGet= `http://localhost:${PORT}/api/tasks/${window.location.pathname.split('/')[2]}`;
const Endpoint_groupGet= `http://localhost:${PORT}/api/groups/${window.location.pathname.split('/')[2]}`;


const Endpoint_taskUpdate= `http://localhost:${PORT}/api/groups/${window.location.pathname.split('/')[2]}`;
const Endpoint_groupCreate= `http://localhost:${PORT}/api/groups/${window.location.pathname.split('/')[2]}`;

// Getting List and Task Card elements
let upcomingUserTasksList = document.getElementById("upcomingTasksContent");
let upcomingUserTaskSmallCard = document.getElementById("upcomingTask");

// Getting user Groups Card element
let userGroupsList = document.getElementById("userGroupsList");
let userGroupsListCard = document.getElementById("userGroupCard");


function setVars() {
}

async function setUIWithUserData() {
  let userUpcomingTasks = await getUserData();
  let userGroups = await getUserGroupsData();

  // Populate the tasks list
  if (userUpcomingTasks.foundData === 1) {
    userUpcomingTasks.Data.forEach(task => addTaskToTaskList(task))
  }
  // No task data was found to populate the list
  else {
  }


  // Populate the groups list
  if (userGroups.foundData === 1) {
    userGroups.Data.forEach(group => addGroupToGroupList(group))
  }
  // No group data was found to populate the list
  else {

  }
}

async function getUserTaskData() {
  // Query server endpoint
  let dataRes = await fetch(Endpoint_taskGet, {
    method: "GET",
    headers: {"Content-Type": "application/json"},
  }).then(res => {return res.json()})

  return dataRes;
}

async function getUserGroupsData() {
  // Query server endpoint
  let dataRes = await fetch(Endpoint_groupGet, {
    method: "GET",
    headers: {"Content-Type": "application/json"},
  }).then(res => {return res.json()})

  return dataRes;
}

async function updateTaskData() {
 // Query server endpoint
  let dataRes = await fetch(Endpoint_taskUpdate, {
    method: "POST",
    headers: {"Content-Type": "application/json"},
    body: JSON.stringify({
      type: 'update',
    })
  }).then(res => {return res.json()})

  return dataRes;
}

async function createTask() {
  // Query server endpoint
  let dataRes = await fetch(Endpoint_taskCreate, {
    method: "POST",
    headers: {"Content-Type": "application/json"},
    body: JSON.stringify({
      type: 'create',
    })
  }).then(res => {return res.json()})

  return dataRes;
}

async function createGroup() {
  // Query server endpoint
  let dataRes = await fetch(Endpoint_groupCreate, {
    method: "POST",
    headers: {"Content-Type": "application/json"},
    body: ''
  }).then(res => {return res.json()})

  return dataRes;
}

function addTaskToTaskList(taskInfo) {
  console.log(taskInfo)

  // Var to hold copy of Task Card element
  let taskCardCopy = upcomingUserTaskSmallCard.cloneNode(true);

  // Edit cloned element to reflect task data
  taskCardCopy.classList.remove("d-none")

  // Appending card Task List element
  upcomingUserTasksList.appendChild(taskCardCopy);
}

function addGroupToGroupList(groupInfo) {
  console.log(groupInfo)

  let groupInfoCardCopy = userGroupsListCard.cloneNode(true);

  groupInfoCardCopy.classList.remove("d-none");

  userGroupsList.appendChild(groupInfoCardCopy);
}
