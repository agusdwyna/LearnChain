// ignition/modules/AttendanceDeployment.js
const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("AttendanceDeployment", (m) => {
  const attendance = m.contract("Attendance");
  return { attendance };
});