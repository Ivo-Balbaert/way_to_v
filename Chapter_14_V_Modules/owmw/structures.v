module owmw

struct Weather {
    token   string
    metric  string
}

struct CoordData {
    lon     f32
    lat     f32
}

struct WeatherData {
    id              int
    main            string
    description     string
    icon            string
}

struct MainData {
    temp        f32
    pressure    int
    humidity    int
    temp_min    f32
    temp_max    f32
}

struct WindData {
    speed   f32
    deg     int
}

struct CloudsData {
    all     int
}

struct SysData {
    country     string
    sunrise     int
    sunset      int
}

struct CityData {
    coord       CoordData
    weather     WeatherData
    base        string
    main        MainData
    visibility  int
    wind        WindData
    clouds      CloudsData
    dt          int
    sys         SysData
    id          int
    name        string
}