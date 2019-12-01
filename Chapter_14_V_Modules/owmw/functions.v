module owmw

import (
    http
    json
)

pub fn (w Weather) city_by_name(q string) CityData {
    url := '$base_url/weather?q=$q&units=$w.metric&APPID=$w.token'
    response := w.city(url)
    return response
}

pub fn (w Weather) city_by_id(id int) CityData {
    url := '$base_url/weather?id=$id&units=$w.metric&APPID=$w.token'
    response := w.city(url)
    return response
}

fn (w Weather) city(url string) CityData {
    response := http.get(url) or {
        panic('Error getting Data: ' + err)
    }
    citydata := json.decode(CityData, response.text) or {
        panic(err)
    }
    return citydata
}

/* Coord Data */
pub fn (c CityData) longitude() f32 {
    return c.coord.lon
}

pub fn (c CityData) latitude() f32 {
    return c.coord.lat
}

/* Weather Data */
pub fn (c CityData) condition_id() int {
    return c.weather.id
}

pub fn (c CityData) description() string {
    return c.weather.main
}

pub fn (c CityData) description_long() string {
    return c.weather.description
}

pub fn (c CityData) icon() string {
    return c.weather.icon
}

/* Main Data */
pub fn (c CityData) temperature() f32 {
    return c.main.temp
}

pub fn (c CityData) pressure() int {
    return c.main.pressure
}

pub fn (c CityData) humidity() int {
    return c.main.humidity
}

pub fn (c CityData) min_temperature() f32 {
    return c.main.temp_min
}

pub fn (c CityData) max_temperature() f32 {
    return c.main.temp_max
}

/* Visibility Data */
pub fn (c CityData) visible_meters() int {
    return c.visibility
}

/* Wind Data */
pub fn (c CityData) wind_speed() f32 {
    return c.wind.speed
}

pub fn (c CityData) wind_degrees() int {
    return c.wind.deg
}

/* Clouds Data */
pub fn (c CityData) cloudiness() int {
    return c.clouds.all
}

/* Sys Data */
pub fn (c CityData) country() string {
    return c.sys.country
}

pub fn (c CityData) sunrise() int {
    return c.sys.sunrise
}

pub fn (c CityData) sunset() int {
    return c.sys.sunset
}

/* Data Calculation */
pub fn (c CityData) data_calculation() int {
    return c.dt
}

/* City ID */
pub fn (c CityData) city_id() int {
    return c.id
}

/* City Name */
pub fn (c CityData) city_name() string {
    return c.name
}