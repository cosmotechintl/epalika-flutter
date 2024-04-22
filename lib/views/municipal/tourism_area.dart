import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import '../../models/map.dart';
import '../../service/map_util.dart';

class TourismArea extends StatefulWidget {
  const TourismArea({super.key});

  @override
  State<TourismArea> createState() => _TourismAreaState();
}

class _TourismAreaState extends State<TourismArea> {
  late final List<MapModel> tourismAreas;

  @override
  void initState() {
    tourismAreas = [
      MapModel(
        const LatLng(27.708960, 85.320277),
        "Swayambhunath Stupa",
        "Swayambhunath, also known as the Monkey Temple, is an ancient religious complex perched atop a hill in the Kathmandu Valley. It is one of the most sacred Buddhist sites in Nepal, offering breathtaking panoramic views of the Kathmandu cityscape. The stupa is adorned with colorful prayer flags, intricate carvings, and numerous shrines. Visitors can observe pilgrims circling the stupa, spinning prayer wheels, and interacting with the resident monkeys, which lend the temple its nickname.",
      ),
      MapModel(
        const LatLng(27.7144, 85.3073),
        "Kathmandu Durbar Square",
        "Kathmandu Durbar Square, a UNESCO World Heritage Site, is a historic plaza located in the heart of the Kathmandu Valley. It was the royal palace of the Malla and Shah kings who ruled over the city. The square is a vibrant hub of Nepalese culture, featuring an array of intricately carved temples, palaces, courtyards, and statues. Visitors can explore the Hanuman Dhoka Palace, Kumari Ghar (home of the Living Goddess), Taleju Temple, and other architectural marvels that reflect the rich heritage of Nepal.",
      ),
      MapModel(
        const LatLng(27.6842, 85.3258),
        "Pashupatinath Temple",
        "Pashupatinath Temple, dedicated to Lord Shiva, is one of the most sacred Hindu temples in Nepal and a UNESCO World Heritage Site. Located on the banks of the Bagmati River, the temple complex is a center for Hindu pilgrimage and cremation rituals. The main temple is adorned with silver doors, gold-plated roofs, and intricate wood carvings. Surrounding the temple are numerous shrines, ashrams, and ghats where devotees perform prayers and cremate their deceased loved ones according to Hindu customs.",
      ),
      MapModel(
        const LatLng(27.7100, 85.3040),
        "Boudhanath Stupa",
        "Boudhanath Stupa, one of the largest stupas in Nepal and a UNESCO World Heritage Site, is a prominent Buddhist pilgrimage site in Kathmandu. The stupa's massive mandala design is adorned with colorful prayer flags, Buddha eyes, and intricate designs, making it a mesmerizing sight for visitors. Surrounding the stupa are monasteries, shops selling Tibetan artifacts, and cafes where visitors can soak in the spiritual ambiance while enjoying a cup of traditional Tibetan tea.",
      ),
      MapModel(
        const LatLng(27.7194, 85.2905),
        "Garden of Dreams",
        "The Garden of Dreams, also known as the Garden of Six Seasons, is an oasis of tranquility nestled in the heart of Kathmandu city. Designed in the Edwardian style, the garden offers a peaceful retreat from the bustling streets, featuring lush lawns, vibrant flowers, elegant pavilions, and soothing fountains. Visitors can stroll along winding pathways, relax on benches, and admire the European-inspired architecture that transports them to a bygone era of elegance and romance.",
      ),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tourism Areas'),
      ),
      body: ListView.builder(
        itemCount: tourismAreas.length,
        itemBuilder: (context, index) {
          final area = tourismAreas[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ListTile(
                  title: Text(
                    area.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                      area.showMore
                          ? area.description
                          : '${area.description.substring(0, 100)}...',
                      textAlign: TextAlign.left),
                  onTap: () {
                    setState(() {
                      area.showMore = !area.showMore;
                    });
                  },
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) =>
                          MapUtils(tourismAreas[index])));
                      debugPrint('Show on Map button tapped for ${area.name}');
                    },
                    child: const Text(
                      'Map',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
