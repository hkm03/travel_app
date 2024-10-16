class AppApiRoutes {
  static const baseURL = "https://bustrackerapi.easysoftwares.org/api/v2/";
  static const adminUrl = "https://bustracker.easysoftwares.org/";

  // Authentication
  static const loginURL = '${baseURL}login';

  // Visits or Used for recoring of Student attendances
  static const createVisit = '${baseURL}visit/create';

  // Driver Details
  static const getDriverData = '${baseURL}DriverDetails';
  static const updateDriverStatus = '${baseURL}UpdateDriverStatus';

  //Device
  static const checkDevice = '${baseURL}checkDevice';
  static const registerDevice = '${baseURL}registerDevice';
  static const updateDeviceStatus = '${baseURL}updateDeviceStatus';

  //Attendance
  static const checkInOut = '${baseURL}attendance/checkInOut';
  static const updateAttendanceStatus = '${baseURL}attendance/statusUpdate';
  static const checkAttendanceStatus = '${baseURL}attendance/checkStatus';

  // Student
  static const getAllClient = '${baseURL}client/getAllClients';
  static const updateStudentPickupAttendance =
      '${baseURL}Student/UpdateStudentIsPresent';
  static const updateStudentDropAttendance =
      '${baseURL}Student/UpdateStudentIsDrop';
}
