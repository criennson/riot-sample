/* SystemJS Riot Loader Plugin */
'use strict';

import compiler from 'riot-compiler';

export function translate(load) {
    let precompiled = compiler.compile(load.source);
    let output = `import * as riot from 'riot';\n${precompiled}`;

    load.source = output;
    return output;
}
