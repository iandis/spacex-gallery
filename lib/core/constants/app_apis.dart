/// A class containing a few `SpaceX GraphiQL` queries
///
/// For queries that return a list of items, there are
/// `limit` and `offset`.
///
/// `limit` should default to 10, while `offset` should default to 0
class AppSpaceXQueries {
  /// pass `limit` and `offset` here as `int`
  static const String launchPads = r'''
    {
      launchpads(limit: $limit, offset: $offset) {
        id
        name
        location {
          name
          region
        }
        wikipedia
      }
    }
  ''';

  /// pass [id] here as a `String`
  static const String launchPadDetails = r'''
    {
      launchpad(id: $id) {
        id
        name
        location {
          name
          region
        }
        vehicles_launched {
          id
          name
          active
          type
          wikipedia
        }
        wikipedia
      }
    }
  ''';

  /// pass `limit` and `offset` here as `int`
  static const String rockets = r'''
    {
      rockets(limit: $limit, offset: $offset) {
        id
        name
        wikipedia
        active
        type
      }
    }
  ''';

  static const String rocketDetails = r'''

  ''';
}
