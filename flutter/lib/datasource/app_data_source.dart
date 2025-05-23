import 'dart:convert';
import 'dart:io';

import 'package:bus_reservation_udemy/datasource/data_source.dart';
import 'package:bus_reservation_udemy/models/app_user.dart';
import 'package:bus_reservation_udemy/models/auth_response_model.dart';
import 'package:bus_reservation_udemy/models/bus_model.dart';
import 'package:bus_reservation_udemy/models/bus_reservation.dart';
import 'package:bus_reservation_udemy/models/bus_schedule.dart';
import 'package:bus_reservation_udemy/models/but_route.dart';
import 'package:bus_reservation_udemy/models/response_model.dart';
import 'package:bus_reservation_udemy/utils/constants.dart';
import 'package:bus_reservation_udemy/utils/helper_functions.dart';
import 'package:http/http.dart' as http;

class AppDataSource extends DataSource {
  final String baseUrl = 'http://10.0.2.2:8080/api/';

  Map<String, String> get header => {
    'Content-Type' : 'application/json'
  };

  Future<Map<String, String>> get authHeader async => {
    'Content-Type' : 'application/json',
    HttpHeaders.authorizationHeader: 'Bearer ${await getToken()}'
  };

  @override
  Future<AuthResponseModel?> login(AppUser user) async {
    final url = '$baseUrl${'auth/login'}';
    try{
      final response = await http.post(
          Uri.parse(url),
          headers: header,
          body: json.encode(user.toJson())
      );
      final map = json.decode(response.body);
      final authResponseModel = AuthResponseModel.fromJson(map);
      return authResponseModel;
    }catch(error){
      return null;
    }
    throw UnimplementedError();
  }

  @override
  Future<ResponseModel> addBus(Bus bus) async {
    final url = '$baseUrl${'bus/add'}';
    try{
      final response = await http.post(
          Uri.parse(url),
        headers: await authHeader,
        body: json.encode(bus.toJson()));
      return await _getResponseModel(http.Response response)(response);
    }catch(error) {
      print(error.toString());
    }
  }

  @override
  Future<ResponseModel> addReservation(BusReservation reservation) {
    // TODO: implement addReservation
    throw UnimplementedError();
  }

  @override
  Future<ResponseModel> addRoute(BusRoute busRoute) {
    // TODO: implement addRoute
    throw UnimplementedError();
  }

  @override
  Future<ResponseModel> addSchedule(BusSchedule busSchedule) {
    // TODO: implement addSchedule
    throw UnimplementedError();
  }

  @override
  Future<List<Bus>> getAllBus() {
    // TODO: implement getAllBus
    throw UnimplementedError();
  }

  @override
  Future<List<BusReservation>> getAllReservation() {
    // TODO: implement getAllReservation
    throw UnimplementedError();
  }

  @override
  Future<List<BusRoute>> getAllRoutes() {
    // TODO: implement getAllRoutes
    throw UnimplementedError();
  }

  @override
  Future<List<BusSchedule>> getAllSchedules() {
    // TODO: implement getAllSchedules
    throw UnimplementedError();
  }

  @override
  Future<List<BusReservation>> getReservationsByMobile(String mobile) {
    // TODO: implement getReservationsByMobile
    throw UnimplementedError();
  }

  @override
  Future<List<BusReservation>> getReservationsByScheduleAndDepartureDate(int scheduleId, String departureDate) {
    // TODO: implement getReservationsByScheduleAndDepartureDate
    throw UnimplementedError();
  }

  @override
  Future<BusRoute?> getRouteByCityFromAndCityTo(String cityFrom, String cityTo) {
    // TODO: implement getRouteByCityFromAndCityTo
    throw UnimplementedError();
  }

  @override
  Future<BusRoute?> getRouteByRouteName(String routeName) {
    // TODO: implement getRouteByRouteName
    throw UnimplementedError();
  }

  @override
  Future<List<BusSchedule>> getSchedulesByRouteName(String routeName) {
    // TODO: implement getSchedulesByRouteName
    throw UnimplementedError();
  }

  Future<ResponseModel>_getResponseModel(http.Response response) {

    ResponseStatus status = ResponseStatus.NONE;
    ResponseModel responseModel = ResponseModel();
  }
}
