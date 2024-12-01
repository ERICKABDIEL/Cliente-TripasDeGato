using System;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media;
using System.Collections.Generic;

namespace TripasDeGatoCliente.Logic { 
    public class DrawingValidation {

        private readonly List<Point> permittedArea;

        public DrawingValidation() {
            permittedArea = new List<Point> {
                new Point(210, 2),
                new Point(220, 5),
                new Point(225, 6),
                new Point(230, 7),
                new Point(233, 8),
                new Point(240, 11),
                new Point(242, 11),
                new Point(254, 16),
                new Point(257, 21),
                new Point(257, 22),
                new Point(268, 40),
                new Point(288, 60),
                new Point(320, 79),
                new Point(380, 92),
                new Point(430, 91),
                new Point(472, 80),
                new Point(478, 105),
                new Point(478, 120),
                new Point(478, 140),
                new Point(475, 159),
                new Point(535, 218),
                new Point(545, 240),
                new Point(540, 260),
                new Point(532, 265),
                new Point(529, 270),
                new Point(500, 280),
                new Point(480, 280),
                new Point(470, 280),
                new Point(410, 265),
                new Point(400, 255),
                new Point(395, 258),
                new Point(396, 300),
                new Point(402, 310),
                new Point(408, 324),
                new Point(405, 335),
                new Point(400, 340),
                new Point(380, 346),
                new Point(350, 348),
                new Point(330, 345),
                new Point(300, 325),
                new Point(270, 285),
                new Point(235, 286),
                new Point(234, 295),
                new Point(245, 310),
                new Point(245, 320),
                new Point(237, 330),
                new Point(220, 337),
                new Point(200, 337),
                new Point(180, 332),
                new Point(149, 306),
                new Point(135, 278),
                new Point(108, 291),
                new Point(104, 305),
                new Point(112, 321),
                new Point(104, 338),
                new Point(81, 345),
                new Point(55, 345),
                new Point(30, 335),
                new Point(13, 310),
                new Point(2, 275),
                new Point(2, 250),
                new Point(8, 223),
                new Point(18, 205),
                new Point(24, 193),
                new Point(22, 153),
                new Point(23, 123),
                new Point(35, 90),
                new Point(70, 50),
                new Point(90, 30),
                new Point(140, 5),
                new Point(156, 0),
                new Point(210, 2),
            };
        }

        public bool IsPointInForbiddenArea(Point point) {
            return !IsPointInDrawingArea(point);
        }

        public bool IsPointInDrawingArea(Point point) {
            int intersections = 0;
            int count = permittedArea.Count;
            for (int i = 0; i < count; i++) {
                Point p1 = permittedArea[i];
                Point p2 = permittedArea[(i + 1) % count];
                if ((point.Y > p1.Y) != (point.Y > p2.Y)) {
                    double xIntersection = (point.Y - p1.Y) * (p2.X - p1.X) / (p2.Y - p1.Y) + p1.X;
                    if (point.X < xIntersection) {
                        intersections++;
                    }
                }
            }
            return (intersections % 2) != 0;
        }
    }
}
