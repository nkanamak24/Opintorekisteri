const db = require('../database');

const arviointi = {
  getAll: function(callback) {
    return db.query('select * from arviointi', callback);
  },
  getOne: function(id, callback) {
    return db.query('select * from arviointi where idArviointi=?', [id], callback);
  },
  add: function(arviointi, callback) {
    return db.query(
      'insert into arviointi (Päivämäärä,Arvosana,Opiskelija_idOpiskelija,Opintojakso_idOpintojakso ) values(?,?,?,?)',
      [arviointi.Päivämäärä, arviointi.Arvosana, arviointi.Opiskelija_idOpiskelija], arviointi.Opintojakso_idOpintojakso ,
      callback
    );
  },
  delete: function(id, callback) {
    return db.query('delete from arviointi where idArviointi=?', [id], callback);
  },
  update: function(id, arviointi, callback) {
    return db.query(
      'update arviointi set Päivämäärä=?,Arvosana=?, Opiskelija_idOpiskelija=?, Opintojakso_idOpintojakso =? where idArviointi=?',
      [arviointi.Päivämäärä, arviointi.Arvosana, arviointi.Opiskelija_idOpiskelija, arviointi.Opintojakso_idOpintojakso , id],
      callback
    );
  }
};
module.exports = arviointi;