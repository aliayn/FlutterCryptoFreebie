import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDBasicAnimation2 extends StatelessWidget {
  const XDBasicAnimation2({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff172b4d),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.5, end: -0.5),
            Pin(size: 330.0, middle: 0.4108),
            child:
                // Adobe XD layer: 'Graph' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 31.0, start: 34.5),
                  Pin(start: 42.0, end: 27.0),
                  child:
                      // Adobe XD layer: 'Left Labels' (group)
                      Stack(
                    children: <Widget>[
                      const Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          width: 6.0,
                          height: 11.0,
                          child: Text(
                            '0',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 11,
                              color: Color(0x52b3d4ff),
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: false,
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment(-1.0, 0.6),
                        child: SizedBox(
                          width: 24.0,
                          height: 11.0,
                          child: Text(
                            '2000',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 11,
                              color: Color(0x52b3d4ff),
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: false,
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment(-1.0, 0.2),
                        child: SizedBox(
                          width: 24.0,
                          height: 11.0,
                          child: Text(
                            '4000',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 11,
                              color: Color(0x52b3d4ff),
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: false,
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment(-1.0, -0.2),
                        child: SizedBox(
                          width: 24.0,
                          height: 11.0,
                          child: Text(
                            '6000',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 11,
                              color: Color(0x52b3d4ff),
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: false,
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment(-1.0, -0.6),
                        child: SizedBox(
                          width: 24.0,
                          height: 11.0,
                          child: Text(
                            '8000',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 11,
                              color: Color(0x52b3d4ff),
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: false,
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 11.0, start: 0.0),
                        child: const Text(
                          '10000',
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 11,
                            color: Color(0x52b3d4ff),
                            fontWeight: FontWeight.w500,
                          ),
                          softWrap: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 262.0, end: 23.5),
                  Pin(size: 12.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Bottom Labels' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 34.0, start: 0.0),
                        Pin(start: 1.0, end: 0.0),
                        child: const Text(
                          'Jul\'18',
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 11,
                            color: Color(0x52b3d4ff),
                            fontWeight: FontWeight.w500,
                          ),
                          softWrap: false,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 38.0, middle: 0.3348),
                        Pin(start: 1.0, end: 0.0),
                        child: const Text(
                          'Oct\'18',
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 11,
                            color: Color(0x52b3d4ff),
                            fontWeight: FontWeight.w500,
                          ),
                          softWrap: false,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 35.0, middle: 0.6608),
                        Pin(start: 1.0, end: 0.0),
                        child: const Text(
                          'Jan\'19',
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 11,
                            color: Color(0x52b3d4ff),
                            fontWeight: FontWeight.w500,
                          ),
                          softWrap: false,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 37.0, end: 0.0),
                        Pin(start: 0.0, end: 1.0),
                        child: const Text(
                          'Apr\'19',
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 11,
                            color: Color(0x52b3d4ff),
                            fontWeight: FontWeight.w500,
                          ),
                          softWrap: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 47.0, 0.0, 33.0),
                  child:
                      // Adobe XD layer: 'Horizontal Lines' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, end: -1.0),
                        child:
                            // Adobe XD layer: 'Line 1' (shape)
                            SvgPicture.string(
                          _svg_k9emv2,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, end: 49.0),
                        child:
                            // Adobe XD layer: 'Line 2' (shape)
                            SvgPicture.string(
                          _svg_egmqly,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, middle: 0.6024),
                        child:
                            // Adobe XD layer: 'Line 3' (shape)
                            SvgPicture.string(
                          _svg_q1cjeo,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, middle: 0.4016),
                        child:
                            // Adobe XD layer: 'Line 4' (shape)
                            SvgPicture.string(
                          _svg_a9q53g,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, start: 50.0),
                        child:
                            // Adobe XD layer: 'Line 5' (shape)
                            SvgPicture.string(
                          _svg_aznpa,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, start: 0.0),
                        child:
                            // Adobe XD layer: 'Line 6' (shape)
                            SvgPicture.string(
                          _svg_z030su,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 285.0, end: 0.5),
                  Pin(start: 47.0, end: 33.0),
                  child:
                      // Adobe XD layer: 'Graph Background' (shape)
                      SvgPicture.string(
                    _svg_ctp95,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 285.0, end: 0.5),
                  Pin(start: 47.0, end: 38.0),
                  child:
                      // Adobe XD layer: 'Graph Border' (shape)
                      SvgPicture.string(
                    _svg_ijhehr,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 20.0, middle: 0.5451),
                  Pin(start: 47.0, end: 33.0),
                  child:
                      // Adobe XD layer: 'Drag Line' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 1.0, middle: 0.5),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.0, -1.0),
                              end: Alignment(0.0, 1.0),
                              colors: [
                                Color(0xff172b4d),
                                Color(0xff0065ff),
                                Color(0xff0a1f43)
                              ],
                              stops: [0.0, 0.502, 1.0],
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 20.0, middle: 0.4565),
                        child:
                            // Adobe XD layer: 'Dot' (group)
                            Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xff0d2145),
                                borderRadius: const BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                border: Border.all(
                                    width: 4.0, color: const Color(0xff0065ff)),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x290065ff),
                                    offset: Offset(0, 3),
                                    blurRadius: 6,
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 6.0,
                                height: 6.0,
                                decoration: const BoxDecoration(
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const Alignment(0.097, 0.142),
                  child: SizedBox(
                    width: 75.0,
                    height: 20.0,
                    child:
                        // Adobe XD layer: 'Date' (group)
                        Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff0065ff),
                            borderRadius: BorderRadius.circular(4.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x290065ff),
                                offset: Offset(0, 3),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 52.0, end: 11.0),
                          Pin(size: 11.0, middle: 0.6667),
                          child: const Text(
                            'OCT 24\'19',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 11,
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 35.5, end: 34.5),
                  Pin(size: 27.0, start: 0.0),
                  child:
                      // Adobe XD layer: 'Timeline' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 24.0, middle: 0.1957),
                        Pin(size: 13.0, start: 2.0),
                        child: const Text(
                          'Day',
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 13,
                            color: Color(0x8fb3d4ff),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 28.0, start: 0.0),
                        Pin(size: 13.0, start: 2.0),
                        child: const Text(
                          'Hour',
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 13,
                            color: Color(0x8fb3d4ff),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 34.0, middle: 0.3911),
                        Pin(size: 13.0, start: 2.0),
                        child: const Text(
                          'Week',
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 13,
                            color: Color(0x8fb3d4ff),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 36.0, middle: 0.6245),
                        Pin(size: 13.0, start: 2.0),
                        child: const Text(
                          'Month',
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 13,
                            color: Color(0x8fb3d4ff),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 32.0, end: 41.0),
                        Pin(size: 16.0, start: 0.0),
                        child: const Text(
                          'Year',
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 16,
                            color: Color(0xff0065ff),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 14.0, end: 0.0),
                        Pin(size: 13.0, start: 2.0),
                        child: const Text(
                          'All',
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 13,
                            color: Color(0x8fb3d4ff),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                          softWrap: false,
                        ),
                      ),
                      Align(
                        alignment: const Alignment(0.54, 1.0),
                        child: Container(
                          width: 5.0,
                          height: 5.0,
                          decoration: const BoxDecoration(
                            color: Color(0xff0065ff),
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 35.0, end: -40.0),
            Pin(size: 55.0, start: 105.0),
            child:
                // Adobe XD layer: 'Headline' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 152.0, start: 0.0),
                  Pin(start: 7.0, end: 2.0),
                  child:
                      // Adobe XD layer: 'Title' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 24.0, start: 0.0),
                        child: const Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 24,
                              color: Color(0xffffffff),
                            ),
                            children: [
                              TextSpan(
                                text: 'Bitcoin ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: '(BTC)',
                              ),
                            ],
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          softWrap: false,
                        ),
                      ),
                      const Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          width: 106.0,
                          height: 13.0,
                          child: Text(
                            '0,304596039 BTC',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 13,
                              color: Color(0x8fb3d4ff),
                            ),
                            softWrap: false,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 55.0, middle: 0.7692),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Bitcoin' (group)
                      Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffff8b00),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          width: 20.0,
                          height: 28.0,
                          child: Transform.rotate(
                            angle: 0.2618,
                            child:
                                // Adobe XD layer: 'BitcoinSign' (group)
                                Stack(
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    SizedBox.expand(
                                        child: SvgPicture.string(
                                      _svg_dul6nk,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 55.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'ETH' (group)
                      Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff0065ff),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 250.0, start: 35.0),
            Pin(size: 181.0, end: 55.0),
            child:
                // Adobe XD layer: 'Stats' (group)
                Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 106.0,
                    height: 71.0,
                    child:
                        // Adobe XD layer: 'Price Index' (group)
                        Stack(
                      children: <Widget>[
                        const Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 83.0,
                            height: 11.0,
                            child: Text(
                              'Price Index',
                              style: TextStyle(
                                fontFamily: 'Metropolis',
                                fontSize: 11,
                                color: Color(0x8fb3d4ff),
                                letterSpacing: 1.3199999999999998,
                              ),
                              softWrap: false,
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 35.0, start: 10.0),
                          Pin(size: 11.0, end: 0.0),
                          child: const Text(
                            '1.44%',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 11,
                              color: Color(0xffff5630),
                              letterSpacing: 0.88,
                            ),
                            softWrap: false,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 5.1, start: 0.0),
                          Pin(size: 8.0, end: 3.0),
                          child:
                              // Adobe XD layer: 'long-arrow-down' (shape)
                              SvgPicture.string(
                            _svg_mn2ksx,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(size: 20.0, middle: 0.4706),
                          child:
                              // Adobe XD layer: '[A] Main Number' (group)
                              Stack(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    0.0, -159.0, 12.0, -181.0),
                                child:
                                    // Adobe XD layer: 'Number' (group)
                                    Stack(
                                  children: <Widget>[
                                    const Align(
                                      alignment: Alignment(-1.0, -0.05),
                                      child: SizedBox(
                                        width: 6.0,
                                        height: 21.0,
                                        child: Text(
                                          '\$',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                          ),
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, start: 9.0),
                                      Pin(size: 20.0, middle: 0.2353),
                                      child: const Text(
                                        '0',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, start: 9.0),
                                      Pin(size: 20.0, middle: 0.2941),
                                      child: const Text(
                                        '1',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, start: 9.0),
                                      Pin(size: 20.0, middle: 0.3529),
                                      child: const Text(
                                        '2',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, start: 9.0),
                                      Pin(size: 20.0, middle: 0.4118),
                                      child: const Text(
                                        '3',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, start: 9.0),
                                      Pin(size: 20.0, middle: 0.4706),
                                      child: const Text(
                                        '4',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, start: 9.0),
                                      Pin(size: 20.0, middle: 0.5294),
                                      child: const Text(
                                        '5',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, start: 9.0),
                                      Pin(size: 20.0, middle: 0.5882),
                                      child: const Text(
                                        '6',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, start: 9.0),
                                      Pin(size: 20.0, middle: 0.6471),
                                      child: const Text(
                                        '7',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, start: 9.0),
                                      Pin(size: 20.0, middle: 0.7059),
                                      child: const Text(
                                        '8',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, start: 9.0),
                                      Pin(size: 20.0, middle: 0.7647),
                                      child: const Text(
                                        '9',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(-0.5, -0.059),
                                      child: SizedBox(
                                        width: 6.0,
                                        height: 20.0,
                                        child: Text(
                                          ',',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, middle: 0.3415),
                                      Pin(size: 20.0, start: 40.0),
                                      child: const Text(
                                        '3',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(-0.317, -0.647),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '4',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(-0.317, -0.529),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '5',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(-0.317, -0.412),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '6',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(-0.317, -0.294),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '7',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(-0.317, -0.176),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '8',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(-0.317, -0.059),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '9',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(-0.317, 0.059),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '0',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(-0.317, 0.176),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '1',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(-0.317, 0.294),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '2',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(-0.024, -0.059),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '5',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(-0.024, 0.059),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '6',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(-0.024, 0.176),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '7',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(-0.024, 0.294),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '8',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(-0.024, 0.412),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '9',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(-0.024, 0.529),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '0',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(-0.024, 0.647),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '1',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, middle: 0.4878),
                                      Pin(size: 20.0, end: 40.0),
                                      child: const Text(
                                        '2',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, middle: 0.4878),
                                      Pin(size: 20.0, end: 20.0),
                                      child: const Text(
                                        '3',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(-0.024, 1.0),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '4',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(0.268, -1.0),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '3',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, middle: 0.6341),
                                      Pin(size: 20.0, start: 20.0),
                                      child: const Text(
                                        '4',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, middle: 0.6341),
                                      Pin(size: 20.0, start: 40.0),
                                      child: const Text(
                                        '5',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(0.268, -0.647),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '6',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(0.268, -0.529),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '7',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(0.268, -0.412),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '8',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(0.268, -0.294),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '9',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(0.268, -0.176),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '0',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(0.268, -0.059),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '1',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(0.268, 0.059),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '2',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(0.455, -0.059),
                                      child: SizedBox(
                                        width: 6.0,
                                        height: 20.0,
                                        child: Text(
                                          '.',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, end: 12.0),
                                      Pin(size: 20.0, middle: 0.3529),
                                      child: const Text(
                                        '2',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, end: 12.0),
                                      Pin(size: 20.0, middle: 0.4118),
                                      child: const Text(
                                        '3',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, end: 12.0),
                                      Pin(size: 20.0, middle: 0.4706),
                                      child: const Text(
                                        '4',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, end: 12.0),
                                      Pin(size: 20.0, middle: 0.5294),
                                      child: const Text(
                                        '5',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, end: 12.0),
                                      Pin(size: 20.0, middle: 0.5882),
                                      child: const Text(
                                        '6',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, end: 12.0),
                                      Pin(size: 20.0, middle: 0.6471),
                                      child: const Text(
                                        '7',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, end: 12.0),
                                      Pin(size: 20.0, middle: 0.7059),
                                      child: const Text(
                                        '8',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, end: 12.0),
                                      Pin(size: 20.0, middle: 0.7647),
                                      child: const Text(
                                        '9',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, end: 12.0),
                                      Pin(size: 20.0, middle: 0.8235),
                                      child: const Text(
                                        '0',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, end: 12.0),
                                      Pin(size: 20.0, end: 40.0),
                                      child: const Text(
                                        '1',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 12.0, end: 0.0),
                                      Pin(size: 20.0, start: 40.0),
                                      child: const Text(
                                        '3',
                                        style: TextStyle(
                                          fontFamily: 'Metropolis',
                                          fontSize: 20,
                                          color: Color(0xffffffff),
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(1.0, -0.647),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '4',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(1.0, -0.529),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '5',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(1.0, -0.412),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '6',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(1.0, -0.294),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '7',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(1.0, -0.176),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '8',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(1.0, -0.059),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '9',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(1.0, 0.059),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '0',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(1.0, 0.176),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '1',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(1.0, 0.294),
                                      child: SizedBox(
                                        width: 12.0,
                                        height: 20.0,
                                        child: Text(
                                          '2',
                                          style: TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 20,
                                            color: Color(0xffffffff),
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                color: const Color(0x33ff0000),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: 90.0,
                    height: 71.0,
                    child:
                        // Adobe XD layer: 'Market Cap' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 7.0),
                          Pin(size: 11.0, start: 0.0),
                          child: const Text(
                            'Market Cap',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 11,
                              color: Color(0x8fb3d4ff),
                              letterSpacing: 1.3199999999999998,
                            ),
                            softWrap: false,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 11.0, end: 0.0),
                          Pin(size: 20.0, middle: 0.4902),
                          child: const Text(
                            '184.82B',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 20,
                              color: Color(0xffffffff),
                              letterSpacing: 0.8,
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: false,
                          ),
                        ),
                        const Align(
                          alignment: Alignment(-1.0, 0.04),
                          child: SizedBox(
                            width: 6.0,
                            height: 21.0,
                            child: Text(
                              '\$',
                              style: TextStyle(
                                fontFamily: 'Metropolis',
                                fontSize: 20,
                                color: Color(0xffffffff),
                                letterSpacing: 0.8,
                              ),
                              softWrap: false,
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 35.0, start: 10.0),
                          Pin(size: 11.0, end: 0.0),
                          child: const Text(
                            '0.78%',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 11,
                              color: Color(0xffff5630),
                              letterSpacing: 0.88,
                            ),
                            softWrap: false,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 5.1, start: 0.0),
                          Pin(size: 8.0, end: 3.0),
                          child:
                              // Adobe XD layer: 'long-arrow-up' (shape)
                              SvgPicture.string(
                            _svg_likd66,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                    width: 130.0,
                    height: 71.0,
                    child:
                        // Adobe XD layer: 'Holder Activity' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 14.0),
                          Pin(size: 11.0, start: 0.0),
                          child: const Text(
                            'holder activity',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 11,
                              color: Color(0x8fb3d4ff),
                              letterSpacing: 1.3199999999999998,
                            ),
                            softWrap: false,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: SizedBox(
                            width: 59.0,
                            height: 11.0,
                            child:
                                // Adobe XD layer: 'Buy' (group)
                                Stack(
                              children: <Widget>[
                                Pinned.fromPins(
                                  Pin(size: 49.0, end: 0.0),
                                  Pin(start: 0.0, end: 0.0),
                                  child: const Text(
                                    '50% Buy',
                                    style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontSize: 11,
                                      color: Color(0xff36b37e),
                                      letterSpacing: 0.88,
                                    ),
                                    softWrap: false,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: SizedBox(
                                    width: 5.0,
                                    height: 8.0,
                                    child:
                                        // Adobe XD layer: 'long-arrow-up' (shape)
                                        SvgPicture.string(
                                      _svg_iwnlya,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                            width: 60.0,
                            height: 11.0,
                            child:
                                // Adobe XD layer: 'Sell' (group)
                                Stack(
                              children: <Widget>[
                                Pinned.fromPins(
                                  Pin(size: 50.0, end: 0.0),
                                  Pin(start: 0.0, end: 0.0),
                                  child: const Text(
                                    '50% Sell',
                                    style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontSize: 11,
                                      color: Color(0x8fb3d4ff),
                                      letterSpacing: 0.88,
                                    ),
                                    softWrap: false,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: SizedBox(
                                    width: 5.0,
                                    height: 8.0,
                                    child:
                                        // Adobe XD layer: 'long-arrow-up' (shape)
                                        SvgPicture.string(
                                      _svg_lwp4u,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 13.0),
                          Pin(size: 15.0, middle: 0.4821),
                          child:
                              // Adobe XD layer: 'Activity Bars' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(size: 2.0, start: 0.0),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0xff36b37e),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, start: 5.0),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0xff36b37e),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, start: 10.0),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0xff36b37e),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, start: 15.0),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0xff36b37e),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, start: 20.0),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0xff36b37e),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, middle: 0.2174),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0xff36b37e),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, middle: 0.2609),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0xff36b37e),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, middle: 0.3043),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0xff36b37e),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, middle: 0.3478),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0xff36b37e),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, middle: 0.3913),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0xff36b37e),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, middle: 0.4348),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0xff36b37e),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, middle: 0.4783),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0xff36b37e),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, middle: 0.5217),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0x52b3d4ff),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, middle: 0.5652),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0x52b3d4ff),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, middle: 0.6087),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0x52b3d4ff),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, middle: 0.6522),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0x52b3d4ff),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, middle: 0.6957),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0x52b3d4ff),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, middle: 0.7391),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0x52b3d4ff),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, middle: 0.7826),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0x52b3d4ff),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, end: 20.0),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0x52b3d4ff),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, end: 15.0),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0x52b3d4ff),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, end: 10.0),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0x52b3d4ff),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, end: 5.0),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0x52b3d4ff),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 2.0, end: 0.0),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  color: const Color(0x52b3d4ff),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 44.0, start: 0.0),
            child:
                // Adobe XD layer: 'status bar/dark' (group)
                Stack(
              children: <Widget>[
                SizedBox.expand(
                    child:
                        // Adobe XD layer: 'Background' (shape)
                        SvgPicture.string(
                  _svg_ojpl3d,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                )),
                Pinned.fromPins(
                  Pin(size: 24.3, end: 35.3),
                  Pin(size: 11.3, middle: 0.5306),
                  child:
                      // Adobe XD layer: 'Battery' (group)
                      Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 2.3, 0.0),
                        child:
                            // Adobe XD layer: 'Border' (group)
                            Stack(
                          children: <Widget>[
                            SizedBox.expand(
                                child:
                                    // Adobe XD layer: 'Fill' (shape)
                                    SvgPicture.string(
                              _svg_ssip0,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            )),
                            SizedBox.expand(
                                child:
                                    // Adobe XD layer: 'Shape' (shape)
                                    SvgPicture.string(
                              _svg_hn,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            )),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          width: 1.0,
                          height: 4.0,
                          child:
                              // Adobe XD layer: 'Cap' (group)
                              Stack(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(-5.0),
                                child: SizedBox.expand(
                                    child:
                                        // Adobe XD layer: 'Fill' (shape)
                                        SvgPicture.string(
                                  _svg_bbjvt8,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                )),
                              ),
                              SizedBox.expand(
                                  child:
                                      // Adobe XD layer: 'Shape' (shape)
                                      SvgPicture.string(
                                _svg_w6qqk0,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              )),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 18.0, start: 2.0),
                        Pin(size: 7.3, middle: 0.5),
                        child:
                            // Adobe XD layer: 'Capacity' (group)
                            Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(-5.0),
                              child: SizedBox.expand(
                                  child:
                                      // Adobe XD layer: 'Fill' (shape)
                                      SvgPicture.string(
                                _svg_oyrqs2,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              )),
                            ),
                            SizedBox.expand(
                                child:
                                    // Adobe XD layer: 'Shape' (shape)
                                    SvgPicture.string(
                              _svg_avi4k,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const Alignment(0.64, 0.049),
                  child: SizedBox(
                    width: 15.0,
                    height: 11.0,
                    child:
                        // Adobe XD layer: 'Wifi' (group)
                        Stack(
                      children: <Widget>[
                        // Adobe XD layer: 'Wifi' (group)
                        Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(-5.0),
                              child: SizedBox.expand(
                                  child:
                                      // Adobe XD layer: 'Fill' (shape)
                                      SvgPicture.string(
                                _svg_na4jco,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              )),
                            ),
                            SizedBox.expand(
                                child:
                                    // Adobe XD layer: 'Shape' (shape)
                                    SvgPicture.string(
                              _svg_iki5el,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(0.525, 0.06),
                  child: SizedBox(
                    width: 17.0,
                    height: 11.0,
                    child:
                        // Adobe XD layer: 'Cellular Connection' (group)
                        Stack(
                      children: <Widget>[
                        // Adobe XD layer: 'Cellular Connection' (group)
                        Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(-5.0),
                              child: SizedBox.expand(
                                  child:
                                      // Adobe XD layer: 'Fill' (shape)
                                      SvgPicture.string(
                                _svg_w6dl,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              )),
                            ),
                            SizedBox.expand(
                                child:
                                    // Adobe XD layer: 'Shape' (shape)
                                    SvgPicture.string(
                              _svg_n4r2,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 54.0, start: 23.0),
                  Pin(size: 16.0, middle: 0.5357),
                  child:
                      // Adobe XD layer: 'Bars/_/Time Black' (group)
                      Stack(
                    children: <Widget>[
                      SizedBox.expand(
                          child:
                              // Adobe XD layer: 'Background' (shape)
                              SvgPicture.string(
                        _svg_u6yej,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      )),
                      Pinned.fromPins(
                        Pin(start: 12.8, end: 13.7),
                        Pin(size: 10.3, end: 0.8),
                        child:
                            // Adobe XD layer: '↳ Time' (shape)
                            SvgPicture.string(
                          _svg_vpihe,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 60.0, end: 35.0),
            Pin(size: 60.0, end: 62.0),
            child:
                // Adobe XD layer: 'Trade Button' (group)
                Stack(
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xff0065ff),
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x290065ff),
                        offset: Offset(0, 8),
                        blurRadius: 12,
                      ),
                    ],
                  ),
                ),
                Transform.translate(
                  offset: const Offset(20.0, 19.7),
                  child: SizedBox(
                    width: 21.0,
                    height: 21.0,
                    child:
                        // Adobe XD layer: 'Exchange' (group)
                        Stack(
                      children: <Widget>[
                        SizedBox(
                          width: 21.0,
                          height: 21.0,
                          child:
                              // Adobe XD layer: 'ic_exchange' (group)
                              Stack(
                            children: <Widget>[
                              SizedBox.expand(
                                  child: SvgPicture.string(
                                _svg_e8tv,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_k9emv2 =
    '<svg viewBox="0.5 708.5 375.0 1.0" ><path transform="translate(0.5, 708.5)" d="M 0 0 L 375 0" fill="none" fill-opacity="0.12" stroke="#b3d4ff" stroke-width="1" stroke-opacity="0.12" stroke-dasharray="5 5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_egmqly =
    '<svg viewBox="0.5 658.5 375.0 1.0" ><path transform="translate(0.5, 658.5)" d="M 0 0 L 375 0" fill="none" fill-opacity="0.12" stroke="#b3d4ff" stroke-width="1" stroke-opacity="0.12" stroke-dasharray="5 5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_q1cjeo =
    '<svg viewBox="0.5 608.5 375.0 1.0" ><path transform="translate(0.5, 608.5)" d="M 0 0 L 375 0" fill="none" fill-opacity="0.12" stroke="#b3d4ff" stroke-width="1" stroke-opacity="0.12" stroke-dasharray="5 5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_a9q53g =
    '<svg viewBox="0.5 558.5 375.0 1.0" ><path transform="translate(0.5, 558.5)" d="M 0 0 L 375 0" fill="none" fill-opacity="0.12" stroke="#b3d4ff" stroke-width="1" stroke-opacity="0.12" stroke-dasharray="5 5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_aznpa =
    '<svg viewBox="0.5 508.5 375.0 1.0" ><path transform="translate(0.5, 508.5)" d="M 0 0 L 375 0" fill="none" fill-opacity="0.12" stroke="#b3d4ff" stroke-width="1" stroke-opacity="0.12" stroke-dasharray="5 5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_z030su =
    '<svg viewBox="0.5 458.5 375.0 1.0" ><path transform="translate(0.5, 458.5)" d="M 0 0 L 375 0" fill="none" fill-opacity="0.12" stroke="#b3d4ff" stroke-width="1" stroke-opacity="0.12" stroke-dasharray="5 5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ctp95 =
    '<svg viewBox="90.0 460.0 285.0 250.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#0065ff" /><stop offset="1.0" stop-color="#0a1f43" /></linearGradient></defs><path transform="translate(-41.0, 30.0)" d="M 131 465 L 136 455 L 141 430 L 146 435 L 151 430 L 156 435 L 161 485 L 166 470 L 171 450 L 176 457.9252014160156 L 181 440 L 186 460 L 191 490 L 196 465 L 201 460 L 206 495 L 211 485 L 216 475 L 221 490 L 226 520 L 231 510 L 236 520 L 241 530 L 246 545 L 251 545 L 256 550 L 261 550 L 266 560 L 271 555 L 276 535 L 281 550 L 286 620 L 291 615 L 296 575 L 301 580 L 306 610 L 311 605 L 316 600 L 321 625 L 326 630 L 331 640 L 336 665 L 341 660 L 346 675 L 351 650 L 356 645 L 361 630 L 366 625 L 371 640 L 376 640 L 381 635 L 386 625 L 391 610 L 396 605 L 401 595 L 406 590 L 411 590 L 416 575 L 416 680 L 131 680 L 131 465" fill="url(#gradient)" fill-opacity="0.12" stroke="none" stroke-width="4" stroke-opacity="0.12" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_ijhehr =
    '<svg viewBox="90.0 460.0 285.0 245.0" ><path transform="translate(-41.0, 30.0)" d="M 131 465 L 136 455 L 141 430 L 146 435 L 151 430 L 156 435 L 161 485 L 166 470 L 171 450 L 176 457.9252014160156 L 181 440 L 186 460 L 191 490 L 196 465 L 201 460 L 206 495 L 211 485 L 216 475 L 221 490 L 226 520 L 231 510 L 236 520 L 241 530 L 246 545 L 251 545 L 256 550 L 261 550 L 266 560 L 271 555 L 276 535 L 281 550 L 286 620 L 291 615 L 296 575 L 301 580 L 306 610 L 311 605 L 316 600 L 321 625 L 326 630 L 331 640 L 336 665 L 341 660 L 346 675 L 351 650 L 356 645 L 361 630 L 366 625 L 371 640 L 376 640 L 381 635 L 386 625 L 391 610 L 396 605 L 401 595 L 406 590 L 411 590 L 416 575" fill="none" stroke="#0065ff" stroke-width="4" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_dul6nk =
    '<svg viewBox="0.0 0.0 20.0 27.7" ><path transform="translate(-11.85, -5.89)" d="M 28.14756393432617 18.69240188598633 C 29.62766647338867 17.93904495239258 30.55373191833496 16.61226844787598 30.33740997314453 14.4019250869751 C 30.04609107971191 11.38126373291016 27.4356746673584 10.36836528778076 24.14037704467773 10.07990741729736 L 24.13974571228027 5.890002727508545 L 21.58652687072754 5.890002727508545 L 21.58581161499023 9.969719886779785 C 20.91403961181641 9.969719886779785 20.2292423248291 9.982907295227051 19.54753875732422 9.99657154083252 L 19.54698371887207 5.89055871963501 L 16.99607086181641 5.890320301055908 L 16.9955940246582 10.07919216156006 C 16.4427490234375 10.09047317504883 15.89983463287354 10.10119819641113 15.36971282958984 10.10119819641113 L 15.36971282958984 10.08880519866943 L 11.84800338745117 10.08737468719482 L 11.84847927093506 12.81084060668945 C 11.84847927093506 12.81084060668945 13.73398017883301 12.77540874481201 13.70291805267334 12.80980682373047 C 14.73671054840088 12.81052207946777 15.07426357269287 13.41031646728516 15.17134284973145 13.92804718017578 L 15.1721363067627 18.70122146606445 L 15.1721363067627 25.40597343444824 C 15.12661647796631 25.73089408874512 14.93507862091064 26.25005531311035 14.21222686767578 26.25100898742676 C 14.24511623382568 26.27992820739746 12.35492897033691 26.25069046020508 12.35492897033691 26.25069046020508 L 11.84847927093506 29.29613876342773 L 15.17054748535156 29.29613876342773 C 15.7895679473877 29.29685020446777 16.39778327941895 29.30646324157715 16.99448013305664 29.31123161315918 L 16.9967041015625 33.54856109619141 L 19.54698371887207 33.54927825927734 L 19.54626846313477 29.35635757446289 C 20.2479076385498 29.37065887451172 20.9251594543457 29.37685394287109 21.58668327331543 29.37598037719727 L 21.58596801757812 33.54928207397461 L 24.13910675048828 33.54928207397461 L 24.14053726196289 29.31902313232422 C 28.43220710754395 29.07275009155273 31.43674659729004 27.99256134033203 31.81028366088867 23.96575355529785 C 32.11137771606445 20.7237606048584 30.58416175842285 19.27662658691406 28.14756393432617 18.69240188598633 Z M 19.60855293273926 12.99467182159424 C 21.04853630065918 12.99467182159424 25.57726669311523 12.53652477264404 25.57790184020996 15.54193115234375 C 25.57726669311523 18.42325019836426 21.04996490478516 18.08665084838867 19.60855293273926 18.08665084838867 L 19.60855293273926 12.99467182159424 Z M 19.6074390411377 26.27166175842285 L 19.60855293273926 20.65726661682129 C 21.33866119384766 20.65678977966309 26.76517486572266 20.15987205505371 26.76589012145996 23.46319389343262 C 26.76660537719727 26.63106346130371 21.33866119384766 26.2703914642334 19.6074390411377 26.27166175842285 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mn2ksx =
    '<svg viewBox="32.0 280.0 5.1 8.0" ><path transform="translate(15.8, 247.8)" d="M 16.26428604125977 37.48092651367188 L 16.61490821838379 37.13030624389648 C 16.69982147216797 37.04539108276367 16.83793830871582 37.04678344726562 16.92111778259277 37.13339233398438 L 18.30599021911621 38.575439453125 L 18.30599021911621 32.4158821105957 C 18.30599021911621 32.29748916625977 18.40198135375977 32.20149993896484 18.52037239074707 32.20149993896484 L 19.02059745788574 32.20149993896484 C 19.13899040222168 32.20149993896484 19.2349796295166 32.29748916625977 19.2349796295166 32.4158821105957 L 19.2349796295166 38.575439453125 L 20.61985397338867 37.1334114074707 C 20.70303344726562 37.04678344726562 20.84115028381348 37.04539108276367 20.92606353759766 37.13032150268555 L 21.27668571472168 37.48094177246094 C 21.36040115356445 37.56466293334961 21.36040115356445 37.70039749145508 21.27668571472168 37.78413391113281 L 18.92207145690918 40.13871383666992 C 18.83835601806641 40.22242736816406 18.70261573791504 40.22242736816406 18.61888313293457 40.13871383666992 L 16.26428604125977 37.78409576416016 C 16.18057060241699 37.70038223266602 16.18057060241699 37.56464385986328 16.26428604125977 37.48092651367188 Z" fill="#ff5630" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_likd66 =
    '<svg viewBox="32.0 280.0 5.1 8.0" ><path transform="translate(15.8, 247.8)" d="M 16.26428604125977 37.48089599609375 L 16.61490631103516 37.13027572631836 C 16.69981956481934 37.04536437988281 16.83793449401855 37.04675674438477 16.92111396789551 37.13336181640625 L 18.30597686767578 38.57540130615234 L 18.30597686767578 32.4158821105957 C 18.30597686767578 32.29748916625977 18.40196800231934 32.20150375366211 18.52035903930664 32.20150375366211 L 19.02058029174805 32.20150375366211 C 19.13897323608398 32.20150375366211 19.23496055603027 32.29748916625977 19.23496055603027 32.4158821105957 L 19.23496055603027 38.57540130615234 L 20.61982727050781 37.13338088989258 C 20.70300483703613 37.04675674438477 20.84112167358398 37.04536437988281 20.92603492736816 37.13029098510742 L 21.27665519714355 37.48091125488281 C 21.3603687286377 37.56463241577148 21.3603687286377 37.70036315917969 21.27665519714355 37.78409957885742 L 18.92205429077148 40.13866424560547 C 18.83834075927734 40.22237777709961 18.70260047912598 40.22237777709961 18.61886787414551 40.13866424560547 L 16.26428604125977 37.78406143188477 C 16.18057060241699 37.70034790039062 16.18057060241699 37.56461334228516 16.26428604125977 37.48089599609375 Z" fill="#ff5630" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_iwnlya =
    '<svg viewBox="32.0 280.0 5.1 8.0" ><path transform="translate(15.8, 247.8)" d="M 16.26428604125977 34.92207336425781 L 16.61490821838379 35.2726936340332 C 16.69982147216797 35.35760879516602 16.83793830871582 35.35621643066406 16.92111778259277 35.26960754394531 L 18.30599021911621 33.82756042480469 L 18.30599021911621 39.98711776733398 C 18.30599021911621 40.10551071166992 18.40198135375977 40.20149993896484 18.52037239074707 40.20149993896484 L 19.02059745788574 40.20149993896484 C 19.13899040222168 40.20149993896484 19.2349796295166 40.10551071166992 19.2349796295166 39.98711776733398 L 19.2349796295166 33.82756042480469 L 20.61985397338867 35.26958847045898 C 20.70303344726562 35.35621643066406 20.84115028381348 35.35760879516602 20.92606353759766 35.27267837524414 L 21.27668571472168 34.92205810546875 C 21.36040115356445 34.83833694458008 21.36040115356445 34.70260238647461 21.27668571472168 34.61886596679688 L 18.92207145690918 32.26428604125977 C 18.83835601806641 32.18057250976562 18.70261573791504 32.18057250976562 18.61888313293457 32.26428604125977 L 16.26428604125977 34.61890411376953 C 16.18057060241699 34.70261764526367 16.18057060241699 34.83835601806641 16.26428604125977 34.92207336425781 Z" fill="#36b37e" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lwp4u =
    '<svg viewBox="32.0 280.0 5.1 8.0" ><path transform="translate(15.8, 247.8)" d="M 16.2642822265625 37.48064041137695 L 16.6148853302002 37.13003921508789 C 16.69979476928711 37.04512786865234 16.83790397644043 37.0465202331543 16.92107963562012 37.13312530517578 L 18.30587577819824 38.57509613037109 L 18.30587577819824 32.41587066650391 C 18.30587577819824 32.29748153686523 18.40186309814453 32.20149993896484 18.5202465057373 32.20149993896484 L 19.02044486999512 32.20149993896484 C 19.13883209228516 32.20149993896484 19.23481559753418 32.29748153686523 19.23481559753418 32.41587066650391 L 19.23481559753418 38.57509613037109 L 20.61961555480957 37.13314437866211 C 20.70279121398926 37.0465202331543 20.84090042114258 37.04512786865234 20.92580795288086 37.13005447387695 L 21.27641296386719 37.48065567016602 C 21.36012268066406 37.56437301635742 21.36012268066406 37.70009994506836 21.27641296386719 37.78383255004883 L 18.92192459106445 40.13828659057617 C 18.83821296691895 40.22199630737305 18.70248031616211 40.22199630737305 18.61875343322754 40.13828659057617 L 16.2642822265625 37.78379440307617 C 16.18057060241699 37.7000846862793 16.18057060241699 37.56435394287109 16.2642822265625 37.48064041137695 Z" fill="#b3d4ff" fill-opacity="0.56" stroke="none" stroke-width="1" stroke-opacity="0.56" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ssip0 =
    '<svg viewBox="336.0 17.3 22.0 11.3" ><path transform="translate(336.0, 17.33)" d="M 2.666666984558105 0 L 19.33333015441895 0 L 19.33333015441895 0 C 20.80608940124512 0 22 1.193907022476196 22 2.666666984558105 L 22 8.666666984558105 L 22 8.666666984558105 C 22 10.13943004608154 20.80608940124512 11.33333015441895 19.33333015441895 11.33333015441895 L 2.666666984558105 11.33333015441895 L 2.666666984558105 11.33333015441895 C 1.193907022476196 11.33333015441895 0 10.13943004608154 0 8.666666984558105 L 0 2.666666984558105 L 0 2.666666984558105 C 0 1.193907022476196 1.193907022476196 0 2.666666984558105 0 Z" fill="none" stroke="#ffffff" stroke-width="2" stroke-opacity="0.35" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hn =
    '<svg viewBox="336.0 17.3 22.0 11.3" ><path transform="translate(0.0, 44.0)" d="M 338.6666870117188 -26.66666984558105 L 355.3333129882812 -26.66666984558105 L 355.3333129882812 -26.66666984558105 C 356.8060913085938 -26.66666984558105 358 -25.47275924682617 358 -24 L 358 -18 L 358 -18 C 358 -16.52724075317383 356.8060913085938 -15.33333015441895 355.3333129882812 -15.33333015441895 L 338.6666870117188 -15.33333015441895 L 338.6666870117188 -15.33333015441895 C 337.1939086914062 -15.33333015441895 336 -16.52724075317383 336 -18 L 336 -24 L 336 -24 C 336 -25.47275924682617 337.1939086914062 -26.66666984558105 338.6666870117188 -26.66666984558105 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bbjvt8 =
    '<svg viewBox="354.0 16.0 11.3 14.0" ><path transform="translate(0.0, 44.0)" d="M 354 -28 L 365.3280029296875 -28 L 365.3280029296875 -14 L 354 -14 L 354 -28 Z" fill="#ffffff" fill-opacity="0.4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_w6qqk0 =
    '<svg viewBox="359.0 21.0 1.3 4.0" ><path transform="translate(0.0, 44.0)" d="M 359 -23 L 359 -19 C 359.8046875 -19.33877944946289 360.3280029296875 -20.12686920166016 360.3280029296875 -21 C 360.3280029296875 -21.87313079833984 359.8046875 -22.66122055053711 359 -23" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_oyrqs2 =
    '<svg viewBox="333.0 14.3 28.0 17.3" ><path transform="translate(0.0, 44.0)" d="M 333 -29.66666984558105 L 361 -29.66666984558105 L 361 -12.33333015441895 L 333 -12.33333015441895 L 333 -29.66666984558105 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_avi4k =
    '<svg viewBox="338.0 19.3 18.0 7.3" ><path transform="translate(0.0, 44.0)" d="M 339.3333129882812 -24.66666984558105 L 354.6666870117188 -24.66666984558105 L 354.6666870117188 -24.66666984558105 C 355.4030151367188 -24.66666984558105 356 -24.06970977783203 356 -23.33333015441895 L 356 -18.66666984558105 L 356 -18.66666984558105 C 356 -17.93029022216797 355.4030151367188 -17.33333015441895 354.6666870117188 -17.33333015441895 L 339.3333129882812 -17.33333015441895 L 339.3333129882812 -17.33333015441895 C 338.5969848632812 -17.33333015441895 338 -17.93029022216797 338 -18.66666984558105 L 338 -23.33333015441895 L 338 -23.33333015441895 C 338 -24.06970977783203 338.5969848632812 -24.66666984558105 339.3333129882812 -24.66666984558105 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ojpl3d =
    '<svg viewBox="0.0 0.0 375.0 44.0" ><path transform="translate(0.0, 44.0)" d="M 0 -44 L 375 -44 L 375 0 L 0 0 L 0 -44 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_na4jco =
    '<svg viewBox="310.7 12.3 25.3 21.0" ><path transform="translate(0.0, 44.0)" d="M 310.6936950683594 -31.66933059692383 L 335.9660949707031 -31.66933059692383 L 335.9660949707031 -10.70376014709473 L 310.6936950683594 -10.70376014709473 L 310.6936950683594 -31.66933059692383 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_iki5el =
    '<svg viewBox="315.7 17.3 15.3 11.0" ><path transform="translate(0.0, 44.0)" d="M 323.3302917480469 -24.39200019836426 C 325.5462036132812 -24.39189910888672 327.6773986816406 -23.54047012329102 329.2832946777344 -22.01366996765137 C 329.404296875 -21.89579010009766 329.5975952148438 -21.89727973937988 329.7167053222656 -22.01700019836426 L 330.8727111816406 -23.18367004394531 C 330.9330139160156 -23.2443904876709 330.9666137695312 -23.32663917541504 330.9660949707031 -23.4122200012207 C 330.9656066894531 -23.49780082702637 330.9309997558594 -23.57965087890625 330.8699951171875 -23.63966941833496 C 326.6549072265625 -27.6792106628418 320.0050964355469 -27.6792106628418 315.7900085449219 -23.63966941833496 C 315.7289123535156 -23.5797004699707 315.6943054199219 -23.49786949157715 315.6936950683594 -23.41229057312012 C 315.6932067871094 -23.32670974731445 315.7267150878906 -23.24443054199219 315.7869873046875 -23.18367004394531 L 316.9432983398438 -22.01700019836426 C 317.0624084472656 -21.8971004486084 317.2557983398438 -21.89561080932617 317.376708984375 -22.01366996765137 C 318.9827880859375 -23.54056930541992 321.1141967773438 -24.39200973510742 323.3302917480469 -24.39200019836426 L 323.3302917480469 -24.39200019836426 Z M 323.3302917480469 -20.5963306427002 C 324.5477905273438 -20.59641075134277 325.7218933105469 -20.14388084411621 326.6242980957031 -19.32666969299316 C 326.7463989257812 -19.21068954467773 326.9386901855469 -19.21319961547852 327.0577087402344 -19.33233070373535 L 328.2123107910156 -20.49900054931641 C 328.2731018066406 -20.56019020080566 328.306884765625 -20.64320945739746 328.3059997558594 -20.7294807434082 C 328.3051147460938 -20.81574058532715 328.2697143554688 -20.89805030822754 328.2077026367188 -20.95800018310547 C 325.4595031738281 -23.51437950134277 321.2034912109375 -23.51437950134277 318.4552917480469 -20.95800018310547 C 318.393310546875 -20.89805030822754 318.3577880859375 -20.81570053100586 318.3569946289062 -20.72941017150879 C 318.356201171875 -20.64311981201172 318.3901062011719 -20.56011009216309 318.4509887695312 -20.49900054931641 L 319.6052856445312 -19.33233070373535 C 319.7243041992188 -19.21319961547852 319.9165954589844 -19.21068954467773 320.0386962890625 -19.32666969299316 C 320.9404907226562 -20.14333915710449 322.1135864257812 -20.5958309173584 323.3302917480469 -20.5963306427002 L 323.3302917480469 -20.5963306427002 Z M 325.5492858886719 -17.8120002746582 C 325.6111145019531 -17.87261009216309 325.6451110839844 -17.95601081848145 325.643310546875 -18.04250907897949 C 325.6416015625 -18.12902069091797 325.6041870117188 -18.21096992492676 325.5400085449219 -18.26899909973145 C 324.264404296875 -19.34787940979004 322.3962097167969 -19.34787940979004 321.1206970214844 -18.26899909973145 C 321.056396484375 -18.21100997924805 321.0190124511719 -18.12908935546875 321.0172119140625 -18.04258918762207 C 321.0152893066406 -17.95607948303223 321.0492858886719 -17.87265014648438 321.1109924316406 -17.8120002746582 L 323.1087036132812 -15.79633045196533 C 323.1672058105469 -15.73709011077881 323.2470092773438 -15.70376014709473 323.3302917480469 -15.70376014709473 C 323.4136047363281 -15.70376014709473 323.493408203125 -15.73709011077881 323.552001953125 -15.79633045196533 L 325.5492858886719 -17.8120002746582 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_w6dl =
    '<svg viewBox="288.7 12.7 27.0 20.7" ><path transform="translate(0.0, 44.0)" d="M 288.6666870117188 -31.33333015441895 L 315.6666870117188 -31.33333015441895 L 315.6666870117188 -10.66666984558105 L 288.6666870117188 -10.66666984558105 L 288.6666870117188 -31.33333015441895 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_n4r2 =
    '<svg viewBox="293.7 17.7 17.0 10.7" ><path transform="translate(0.0, 44.0)" d="M 294.6666870117188 -19.66666984558105 L 295.6666870117188 -19.66666984558105 C 296.218994140625 -19.66666984558105 296.6666870117188 -19.21895027160645 296.6666870117188 -18.66666984558105 L 296.6666870117188 -16.66666984558105 C 296.6666870117188 -16.1143798828125 296.218994140625 -15.66666984558105 295.6666870117188 -15.66666984558105 L 294.6666870117188 -15.66666984558105 C 294.1144104003906 -15.66666984558105 293.6666870117188 -16.1143798828125 293.6666870117188 -16.66666984558105 L 293.6666870117188 -18.66666984558105 C 293.6666870117188 -19.21895027160645 294.1144104003906 -19.66666984558105 294.6666870117188 -19.66666984558105 L 294.6666870117188 -19.66666984558105 Z M 299.3333129882812 -21.66666984558105 L 300.3333129882812 -21.66666984558105 C 300.8855895996094 -21.66666984558105 301.3333129882812 -21.21895027160645 301.3333129882812 -20.66666984558105 L 301.3333129882812 -16.66666984558105 C 301.3333129882812 -16.1143798828125 300.8855895996094 -15.66666984558105 300.3333129882812 -15.66666984558105 L 299.3333129882812 -15.66666984558105 C 298.781005859375 -15.66666984558105 298.3333129882812 -16.1143798828125 298.3333129882812 -16.66666984558105 L 298.3333129882812 -20.66666984558105 C 298.3333129882812 -21.21895027160645 298.781005859375 -21.66666984558105 299.3333129882812 -21.66666984558105 Z M 304 -24 L 305 -24 C 305.5523071289062 -24 306 -23.55228042602539 306 -23 L 306 -16.66666984558105 C 306 -16.1143798828125 305.5523071289062 -15.66666984558105 305 -15.66666984558105 L 304 -15.66666984558105 C 303.4476928710938 -15.66666984558105 303 -16.1143798828125 303 -16.66666984558105 L 303 -23 C 303 -23.55228042602539 303.4476928710938 -24 304 -24 Z M 308.6666870117188 -26.33333015441895 L 309.6666870117188 -26.33333015441895 C 310.218994140625 -26.33333015441895 310.6666870117188 -25.8856201171875 310.6666870117188 -25.33333015441895 L 310.6666870117188 -16.66666984558105 C 310.6666870117188 -16.1143798828125 310.218994140625 -15.66666984558105 309.6666870117188 -15.66666984558105 L 308.6666870117188 -15.66666984558105 C 308.1144104003906 -15.66666984558105 307.6666870117188 -16.1143798828125 307.6666870117188 -16.66666984558105 L 307.6666870117188 -25.33333015441895 C 307.6666870117188 -25.8856201171875 308.1144104003906 -26.33333015441895 308.6666870117188 -26.33333015441895 L 308.6666870117188 -26.33333015441895 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_u6yej =
    '<svg viewBox="29.0 15.0 54.0 16.0" ><path transform="translate(8.0, 50.0)" d="M 21 -19 L 75 -19 L 75 -35 L 21 -35 L 21 -19 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vpihe =
    '<svg viewBox="41.8 19.9 27.5 10.3" ><path transform="translate(29.0, 17.0)" d="M 16.43259620666504 13.2392578125 C 18.94138526916504 13.2392578125 20.43161964416504 11.27734375 20.43161964416504 7.955078125 C 20.43161964416504 6.7041015625 20.19236183166504 5.6513671875 19.73435401916504 4.837890625 C 19.07126808166504 3.5732421875 17.92966651916504 2.8896484375 16.48728370666504 2.8896484375 C 14.34079933166504 2.8896484375 12.82322120666504 4.33203125 12.82322120666504 6.35546875 C 12.82322120666504 8.255859375 14.19040870666504 9.63671875 16.07029151916504 9.63671875 C 17.22556495666504 9.63671875 18.16208839416504 9.0966796875 18.62693214416504 8.16015625 L 18.64743995666504 8.16015625 C 18.64743995666504 8.16015625 18.67478370666504 8.16015625 18.68161964416504 8.16015625 C 18.69529151916504 8.16015625 18.74314308166504 8.16015625 18.74314308166504 8.16015625 C 18.74314308166504 10.416015625 17.88865089416504 11.7626953125 16.44626808166504 11.7626953125 C 15.59861183166504 11.7626953125 14.94236183166504 11.2978515625 14.71677589416504 10.552734375 L 12.95993995666504 10.552734375 C 13.25388526916504 12.1728515625 14.62790870666504 13.2392578125 16.43259620666504 13.2392578125 Z M 16.49411964416504 8.2353515625 C 15.35935401916504 8.2353515625 14.55271339416504 7.4287109375 14.55271339416504 6.30078125 C 14.55271339416504 5.2001953125 15.40036964416504 4.359375 16.50095558166504 4.359375 C 17.60154151916504 4.359375 18.44919776916504 5.2138671875 18.44919776916504 6.328125 C 18.44919776916504 7.4287109375 17.62204933166504 8.2353515625 16.49411964416504 8.2353515625 Z M 23.53221893310547 11.9541015625 C 24.18163299560547 11.9541015625 24.62596893310547 11.4892578125 24.62596893310547 10.8740234375 C 24.62596893310547 10.251953125 24.18163299560547 9.7939453125 23.53221893310547 9.7939453125 C 22.88964080810547 9.7939453125 22.43846893310547 10.251953125 22.43846893310547 10.8740234375 C 22.43846893310547 11.4892578125 22.88964080810547 11.9541015625 23.53221893310547 11.9541015625 Z M 23.53221893310547 6.8271484375 C 24.18163299560547 6.8271484375 24.62596893310547 6.369140625 24.62596893310547 5.75390625 C 24.62596893310547 5.1318359375 24.18163299560547 4.673828125 23.53221893310547 4.673828125 C 22.88964080810547 4.673828125 22.43846893310547 5.1318359375 22.43846893310547 5.75390625 C 22.43846893310547 6.369140625 22.88964080810547 6.8271484375 23.53221893310547 6.8271484375 Z M 31.44532012939453 13 L 33.13379669189453 13 L 33.13379669189453 11.1611328125 L 34.46680450439453 11.1611328125 L 34.46680450439453 9.6708984375 L 33.13379669189453 9.6708984375 L 33.13379669189453 3.1357421875 L 30.64551544189453 3.1357421875 C 28.90235137939453 5.7607421875 27.51465606689453 7.955078125 26.62598419189453 9.5888671875 L 26.62598419189453 11.1611328125 L 31.44532012939453 11.1611328125 L 31.44532012939453 13 Z M 28.25977325439453 9.609375 C 29.40821075439453 7.5859375 30.43360137939453 5.9658203125 31.37696075439453 4.5712890625 L 31.47266387939453 4.5712890625 L 31.47266387939453 9.7119140625 L 28.25977325439453 9.7119140625 L 28.25977325439453 9.609375 Z M 38.51076507568359 13 L 40.27443695068359 13 L 40.27443695068359 3.1357421875 L 38.51760101318359 3.1357421875 L 35.94045257568359 4.9404296875 L 35.94045257568359 6.6357421875 L 38.39455413818359 4.9130859375 L 38.51076507568359 4.9130859375 L 38.51076507568359 13 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_e8tv =
    '<svg viewBox="5.0 4.7 20.6 20.6" ><path transform="translate(-2234.55, 721.1)" d="M 2244.666748046875 -696.2481079101562 C 2244.1455078125 -696.7692260742188 2244.1455078125 -697.6134033203125 2244.666748046875 -698.1336059570312 L 2257.865966796875 -711.3330078125 C 2258.38720703125 -711.8541259765625 2259.2314453125 -711.8541259765625 2259.75146484375 -711.3330078125 C 2260.02490234375 -711.06005859375 2260.15478515625 -710.6978759765625 2260.141357421875 -710.3399658203125 C 2260.141845703125 -710.3251342773438 2260.14208984375 -710.310302734375 2260.14208984375 -710.2952880859375 L 2260.14208984375 -702.9620971679688 C 2260.14208984375 -702.2258911132812 2259.54541015625 -701.6292114257812 2258.809326171875 -701.6292114257812 C 2258.072265625 -701.6292114257812 2257.475341796875 -702.2258911132812 2257.475341796875 -702.9620971679688 L 2257.475341796875 -707.1714477539062 L 2246.55224609375 -696.2481079101562 C 2246.2919921875 -695.988037109375 2245.950927734375 -695.8579711914062 2245.60986328125 -695.8579711914062 C 2245.2685546875 -695.8579711914062 2244.92724609375 -695.988037109375 2244.666748046875 -696.2481079101562 Z M 2239.942626953125 -700.9722290039062 C 2239.671875 -701.2432861328125 2239.542236328125 -701.6016845703125 2239.55322265625 -701.9564819335938 C 2239.552490234375 -701.9741821289062 2239.552001953125 -701.9920043945312 2239.552001953125 -702.0098876953125 L 2239.552001953125 -709.3431396484375 C 2239.552001953125 -710.079345703125 2240.149658203125 -710.676025390625 2240.8857421875 -710.676025390625 C 2241.6220703125 -710.676025390625 2242.21875 -710.079345703125 2242.21875 -709.3431396484375 L 2242.21875 -705.1337890625 L 2253.141845703125 -716.05712890625 C 2253.6630859375 -716.5782470703125 2254.50732421875 -716.5782470703125 2255.02734375 -716.05712890625 C 2255.548583984375 -715.5369262695312 2255.548583984375 -714.6918334960938 2255.02734375 -714.171630859375 L 2241.828125 -700.9722290039062 C 2241.56787109375 -700.711669921875 2241.226806640625 -700.5814208984375 2240.8857421875 -700.5814208984375 C 2240.54443359375 -700.5814208984375 2240.203125 -700.711669921875 2239.942626953125 -700.9722290039062 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
