class Reaction {
  Reaction({
    required this.liked,
    required this.disliked,
  });

  bool liked;
  bool disliked;
}

typedef ReviewID = int;

class ReviewedMap {
  ReviewedMap({
    required this.reviewedMap,
  });

  Map<ReviewID, Reaction> reviewedMap;
}
