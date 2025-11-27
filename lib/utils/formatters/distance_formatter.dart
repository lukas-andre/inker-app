import 'package:flutter/material.dart';

class DistanceFormatter {
  /// Formatea una distancia para mostrar de manera legible
  /// 
  /// Reglas de formateo:
  /// - Si < 1 km: muestra en metros (ej: "850 m")
  /// - Si >= 1 km: muestra en km con 1 decimal máximo (ej: "2.5 km", "12 km")
  /// - Redondea automáticamente para evitar decimales innecesarios
  static String formatDistance(double? distance, String? distanceUnit, BuildContext context) {
    if (distance == null) return '';
    
    // Asumimos que la distancia viene en kilómetros desde la API
    double distanceInKm = distance;
    
    // Si la distancia es menor a 1 km, convertir a metros
    if (distanceInKm < 1.0) {
      int meters = (distanceInKm * 1000).round();
      return '$meters m';
    }
    
    // Si es mayor o igual a 1 km, formatear en kilómetros
    // Redondear a 1 decimal solo si es necesario
    if (distanceInKm == distanceInKm.roundToDouble()) {
      // Es un número entero, no mostrar decimales
      return '${distanceInKm.round()} km';
    } else {
      // Tiene decimales, mostrar 1 decimal
      return '${distanceInKm.toStringAsFixed(1)} km';
    }
  }
  
  /// Formatea una distancia con texto adicional (ej: "2.5 km de ti")
  static String formatDistanceWithSuffix(double? distance, String? distanceUnit, BuildContext context) {
    String formattedDistance = formatDistance(distance, distanceUnit, context);
    if (formattedDistance.isEmpty) return '';
    
    return '$formattedDistance de ti';
  }
  
  /// Formatea distancia para usar en widgets compactos (sin sufijo)
  static String formatDistanceCompact(double? distance, String? distanceUnit, BuildContext context) {
    return formatDistance(distance, distanceUnit, context);
  }
}