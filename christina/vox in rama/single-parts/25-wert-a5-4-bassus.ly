\version "2.16.0"
\include "english.ly"

\include "../include/paper-1-part.ly" 
\include "../include/global-parts.ly" 
\include "../include/macros.ly" 
\include "../include/scheme.ly" 
\include "../include/vocal-layout-parts.ly"

\header {
    % Things that change per piece:
    title = "Vox in Rama audita est"
    folio = \markup { Matthew 2:18, motet for the feast of Holy Innocents } 

    % Things that change per part:
    partname = "Bassus (part 5 of 5)"
    instrument = "Vox in Rama(bassus)"

    % Unchanging:
    \include "include/distribution-header.ly"
    lastupdated = "2015-12-27"
    tagline = #'f
}

\include "../parts/25-wert-a5-motet.ly"

\book {
    \bookOutputName "25-vox_in_rama"
    \bookOutputSuffix "--5-bassus--bs_clef"
    \include "../include/paper-1-part.ly"
    \score {
        \new Voice << 
            \clef bass
            \global 
            \bassusXXV 
        >>
        \addlyrics { \bassusLyricsXXV }
     %   \include "../include/vocal-layout-parts.ly"
    }
}
