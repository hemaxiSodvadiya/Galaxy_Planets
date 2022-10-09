class Planet {
  final String id;
  final String name;
  final String location;
  final String distance;
  final String gravity;
  final String description;
  final String image;
  const Planet({
    required this.id,
    required this.name,
    required this.location,
    required this.distance,
    required this.gravity,
    required this.description,
    required this.image,
  });
}

List<Planet> planet = [
  const Planet(
    id: "1",
    name: "Mars",
    location: "Milkyway Galaxy",
    distance: "227.9m Km",
    gravity: "3.711 m/s ",
    description:
        "Mars is the fourth planet from the Sun and the next planet beyond Earth. It is, on average, more than 142 million miles from the Sun. Mars turns on its axis more slowly than Earth does. So, a day on Mars is 24.6 hours. Since this planet is farther from the Sun than Earth, one revolution of Mars around the Sun is a longer trip. So, a year on Mars is 687 Earth days. Mars is about half the size of Earth. Mars is known as the Red Planet because the iron oxide chemicals in its soil looks like rust.",
    image: "assets/img/mars.png",
  ),
  const Planet(
    id: "2",
    name: "Neptune",
    location: "Milkyway Galaxy",
    distance: "54.6m Km",
    gravity: "11.15 m/s ",
    description:
        "Neptune is dark, cold, and very windy. It's the last of the planets in our solar system. It's more than 30 times as far from the Sun as Earth is.Neptune is very similar to Uranus. It's made of a thick soup of water, ammonia, and methane over an Earth-sized solid center. Its atmosphere is made of hydrogen, helium, and methane. The methane gives Neptune the same blue color as Uranus.Neptune has six rings, but they're very hard to see.Visit NASA Space Place for more kid-friendly facts.",
    image: "assets/img/neptune.png",
  ),
  const Planet(
    id: "3",
    name: "Moon",
    location: "Milkyway Galaxy",
    distance: "54.6m Km",
    gravity: "1.622 m/s ",
    description:
        "he brightest and largest object in our night sky, the Moon makes Earth a more livable planet by moderating our home planet's wobble on its axis, leading to a relatively stable climate. It also causes tides, creating a rhythm that has guided humans for thousands of years. The Moon was likely formed after a Mars-sized body collided with Earth.Earth's Moon is the fifth largest of the 200+ moons orbiting planets in our solar system.",
    image: "assets/img/moon.png",
  ),
  const Planet(
    id: "4",
    name: "Earth",
    location: "Milkyway Galaxy",
    distance: "54.6m Km",
    gravity: "9.807 m/s ",
    description:
        "Our home planet Earth is a rocky, terrestrial planet. It has a solid and active surface with mountains, valleys, canyons, plains and so much more. Earth is special because it is an ocean planet. Water covers 70% of Earth's surface.Earth's atmosphere is made mostly of nitrogen and has plenty of oxygen for us to breathe. The atmosphere also protects us from incoming meteoroids, most of which break up before they can hit the surface.Visit NASA Space Place for more kid-friendly facts.",
    image: "assets/img/earth.png",
  ),
  const Planet(
    id: "5",
    name: "Mercury",
    location: "Milkyway Galaxy",
    distance: "54.6m Km",
    gravity: "3.7 m/s ",
    description:
        "Lorem ipsum...Mercury is the smallest planet in our solar system. It’s a little bigger than Earth’s Moon. It is the closest planet to the Sun, but it’s actually not the hottest. Venus is hotter.Along with Venus, Earth, and Mars, Mercury is one of the rocky planets. It has a solid surface that is covered with craters like our Moon. It has a thin atmosphere, and it doesn’t have any moons. Mercury likes to keep things simple.Mercury spins slowly compared to Earth, so one day lasts a long time. Mercury takes 59 Earth days to make one full rotation. But a year on Mercury goes fast. Because it’s the closest planet to the sun, it goes around the Sun in just 88 Earth days.Visit NASA Space Place for more kid-friendly facts.",
    image: "assets/img/mercury.png",
  ),
];
