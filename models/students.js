'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class students extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  students.init({
    college_id: DataTypes.INTEGER,
    salutaion: DataTypes.STRING,
    first_name: DataTypes.STRING,
    middle_name: DataTypes.STRING,
    last_name: DataTypes.STRING,
    email: DataTypes.STRING,
    mobile: DataTypes.STRING,
    gender: DataTypes.STRING,
    dob: DataTypes.STRING,
    emergency_contact: DataTypes.STRING,
    profile_picture: DataTypes.TEXT,
    signature: DataTypes.TEXT,
    blood_group: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'students',
  });
  return students;
};