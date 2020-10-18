import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ss_test_weather/domain/state/home/home_state.dart';
import 'package:ss_test_weather/internal/dependencies/home_module.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _cityIdController = TextEditingController();

  HomeState _homeState;

  @override
  void initState() {
    super.initState();
    _homeState = HomeModule.homeState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: _getBody(),
      ),
    );
  }

  Widget _getBody() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _getRowInput(),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('Получить'),
              onPressed: _getWeather,
            ),
            SizedBox(height: 20),
            _getWeatherInfo(),
          ],
        ),
      ),
    );
  }

  Widget _getRowInput() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _cityIdController,
            autofocus: false,
            keyboardType:
                TextInputType.numberWithOptions(decimal: true, signed: true),
            decoration: InputDecoration(hintText: 'Код города'),
          ),
        ),
      ],
    );
  }

  Widget _getWeatherInfo() {
    return Observer(
      builder: (_) {
        if (_homeState.isLoading)
          return Center(
            child: CircularProgressIndicator(),
          );
        if (_homeState.weather == null) return Container();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Город: ${_homeState.weather.cityName}'),
            Text('Температура:  ${_homeState.weather.temp.toString()} °'),
            Text('Влажность:  ${_homeState.weather.humidity.toString()} %'),
            Text('Давление:  ${_homeState.weather.pressure.toString()} мм рт. ст.'),
          ],
        );
      },
    );
  }

  void _getWeather() {
    // здесь получаем данные
    final cityId = int.tryParse(_cityIdController.text);
    _homeState.getWeather(cityId: cityId);
  }
}
