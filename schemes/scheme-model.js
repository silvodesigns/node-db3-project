const db = require('../data/db-config');

function find(){
    return db('schemes');

}

function findById(id){
    return db('schemes').where({id}).first();
}

function findSteps(id){
    return db('steps as st')
        .join("schemes as sc", "sc.id", "st.scheme_id")
        .select("st.id", "sc.scheme_name", "st.step_number", "st.instructions")
        .where({scheme_id: id})
        .orderBy("st.step_number")

}

function add(toBeAdded) {
    return db('schemes').insert(toBeAdded);
}

function update(changes, id){
    return db('schemes').where({id}).update(changes);
}

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update
}