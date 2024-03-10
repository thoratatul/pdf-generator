"use strict";
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable("students", {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      college_id: {
        allowNull: false,
        type: Sequelize.INTEGER,
      },
      salutaion: {
        allowNull: false,
        type: Sequelize.STRING(5),
      },
      first_name: {
        allowNull: false,
        type: Sequelize.STRING(50),
      },
      middle_name: {
        allowNull: false,
        type: Sequelize.STRING(50),
      },
      last_name: {
        allowNull: false,
        type: Sequelize.STRING(50),
      },
      email: {
        allowNull: false,
        unique: true,
        type: Sequelize.STRING(100),
      },
      mobile: {
        allowNull: false,
        unique: true,
        type: Sequelize.STRING(12),
      },
      gender: {
        allowNull: false,
        type: Sequelize.STRING(10),
      },
      dob: {
        allowNull: false,
        type: Sequelize.STRING(10),
      },
      emergency_contact: {
        allowNull: false,
        type: Sequelize.STRING(12),
      },
      profile_picture: {
        allowNull: false,
        type: Sequelize.TEXT,
      },
      signature: {
        allowNull: false,
        type: Sequelize.TEXT,
      },
      blood_group: {
        allowNull: false,
        type: Sequelize.STRING(10),
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE,
        defaultValue: Sequelize.literal("CURRENT_TIMESTAMP"),
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE,
        defaultValue: Sequelize.literal("CURRENT_TIMESTAMP"),
        onUpdate: Sequelize.literal("CURRENT_TIMESTAMP"),
      },
    });
  },
  async down(queryInterface) {
    await queryInterface.dropTable("students");
  },
};
