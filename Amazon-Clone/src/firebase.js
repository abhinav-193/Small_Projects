import firebase from "firebase";

const firebaseConfig = {
  apiKey: "AIzaSyChtz5GZQxC1jfTrzhApYt9FqUeLgRYyx4",
  authDomain: "clone-46584.firebaseapp.com",
  projectId: "clone-46584",
  storageBucket: "clone-46584.appspot.com",
  messagingSenderId: "120947384154",
  appId: "1:120947384154:web:317b3af3b098d8dba1dd63",
  measurementId: "G-71TT6HF5NH",
};

const firebaseApp = firebase.initializeApp(firebaseConfig);

const db = firebaseApp.firestore();
const auth = firebase.auth();

export { db, auth };
