/*
 * If you change this file then run
 * cd src/main/java && zip react.js.zip react4j/todomvc/react4j.js
 */

goog.provide('react4j.todomvc.react4j');

/** @define {string} */
goog.define('react4j.environment', 'production');
/** @define {string} */
goog.define('react4j.enable_component_names', 'false');
/** @define {string} */
goog.define('react4j.check_component_state_invariants', 'false');
/** @define {string} */
goog.define('react4j.check_invariants', 'false');

goog.provide('react4j.arez');

/** @define {string} */
goog.define('react4j.arez.store_arez_data_as_state', 'false');

goog.provide('braincheck');

/** @define {string} */
goog.define('braincheck.environment', 'production');

/** @define {string} */
goog.define('braincheck.verbose_error_messages', 'false');
/** @define {string} */
goog.define('braincheck.check_invariants', 'false');
/** @define {string} */
goog.define('braincheck.check_api_invariants', 'false');

goog.provide('arez');

/** @define {string} */
goog.define('arez.environment', 'production');

/** @define {string} */
goog.define('arez.enable_names', 'false');

/** @define {string} */
goog.define('arez.enable_property_introspection', 'false');

/** @define {string} */
goog.define('arez.enforce_transaction_type', 'false');

/** @define {string} */
goog.define('arez.purge_reactions_when_runaway_detected', 'true');

/** @define {string} */
goog.define('arez.collections_properties_unmodifiable', 'false');

/** @define {string} */
goog.define('arez.enable_zones', 'false');

/** @define {string} */
goog.define('arez.enable_spies', 'false');

/** @define {string} */
goog.define('arez.enable_native_components', 'false');

/** @define {string} */
goog.define('arez.enable_registries', 'false');

/** @define {string} */
goog.define('arez.enable_observer_error_handlers', 'false');

/** @define {string} */
goog.define('arez.check_invariants', 'false');

/** @define {string} */
goog.define('arez.check_api_invariants', 'false');

/** @define {string} */
goog.define('arez.logger', 'none');
