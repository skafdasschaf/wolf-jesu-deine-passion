% (c) 2020 by Wolfgang Esser-Skala.
% This file is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
% To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.

\version "2.18.0"

\include "../definitions.ly"

\paper {
	indent = 1\cm
	top-margin = 1.5\cm
	system-separator-markup = ##f
	system-system-spacing =
    #'((basic-distance . 18)
       (minimum-distance . 18)
       (padding . -100)
       (stretchability . 0))

	top-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 12)
       (padding . -100)
       (stretchability . 0))

	top-markup-spacing =
    #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . -100)
       (stretchability . 0))

	markup-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 12)
       (padding . -100)
       (stretchability . 0))

	systems-per-page = #9
}

#(set-global-staff-size 17.82)

\layout {
	\context {
		\Staff
		instrumentName = "org"
	}
}

\book {
	\bookpart {
		\header {
			genre = "C H O R A L"
			number = "1.1"
			title = "Jeſu, deine Pasſion"
		}
		\paper { indent = 2\cm systems-per-page = #4 }
		\score {
			<<
				\new Staff {
					\set Staff.instrumentName = "Organo"
					\JesuDeineOrgano
				}
				\new FiguredBass { \JesuDeineBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			genre = "A C C O M P A G N A T O"
			number = "1.2"
			title = "O welch ein kläglich Bild"
		}
		\paper { systems-per-page = #5 }
		\score {
			<<
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "T"
						\new Voice = "Tenore" { \dynamicUp \OWelchTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \OWelchTenoreLyrics
				>>
				\new Staff { \OWelchOrgano }
				\new FiguredBass { \OWelchBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			genre = "A R I A"
			number = "1.3"
			title = "Heiliger, auch ich bin Erde"
		}
		\score {
			<<
				\new Staff { \HeiligerOrgano }
				\new FiguredBass { \HeiligerBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			genre = "C O R O"
			number = "1.4"
			title = "Mein Herz iſt bereit"
		}
		\score {
			<<
				\new Staff { \MeinHerzOrgano }
				\new FiguredBass { \MeinHerzBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			genre = "A C C O M P A G N A T O"
			number = "1.5"
			title = "Verräther! Wie, dir muß es doch gelingen?"
		}
		\paper { systems-per-page = #5 }
		\score {
			<<
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "T"
						\new Voice = "Tenore" { \dynamicUp \VerraetherTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \VerraetherTenoreLyrics
				>>
				\new Staff { \VerraetherOrgano }
				\new FiguredBass { \VerraetherBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			genre = "A R I A"
			number = "1.6"
			title = "Lieblich fließt die Zähre"
		}
		\score {
			<<
				\new Staff { \LieblichOrgano }
				\new FiguredBass { \LieblichBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			genre = "C O R O"
			number = "1.7"
			title = "Wohl dem, dem die Uebertretungen vergeben ſind"
		}
		\paper { systems-per-page = #6 }
		\score {
			<<
				\new Staff { \WohlDemOrgano }
				\new FiguredBass { \WohlDemBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			genre = "C H O R A L"
			number = "1.8"
			title = "Ich falle dir, mein Gott, zu Füßen"
		}
		\paper { systems-per-page = #4 }
		\score {
			<<
				\new Staff { \IchFalleOrgano }
				\new FiguredBass { \IchFalleBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			genre = "A C C O M P A G N A T O"
			number = "1.9"
			title = "Er, deſſen Allmachts Ruf"
		}
		\paper { systems-per-page = #5 }
		\score {
			<<
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = \markup \center-column { "A" "T" }
						\new Voice = "Soli" { \dynamicUp \ErDessenSoliNotes }
					}
					\new Lyrics \lyricsto Soli \ErDessenSoliLyrics
				>>
				\new Staff { \ErDessenOrgano }
				\new FiguredBass { \ErDessenBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			genre = "C O R O"
			number = "1.10"
			title = "Er iſt um unſere Miſſethat willen ſo verwundet"
		}
		\paper { systems-per-page = #6 }
		\score {
			<<
				\new Staff { \ErIstUmOrgano }
				\new FiguredBass { \ErIstUmBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			genre = "C H O R A L"
			number = "1.11"
			title = "Schreibe deine blutge Wunden"
		}
		\paper { systems-per-page = #4 }
		\score {
			<<
				\new Staff { \SchreibeDeineOrgano }
				\new FiguredBass { \SchreibeDeineBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			genre = "A C C O M P A G N A T O"
			number = "2.1"
			title = "Nun iſt die feyerliche Stunde des großen Opfers da"
		}
		\paper { systems-per-page = #5 }
		\score {
			<<
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "T"
						\new Voice = "Tenore" { \dynamicUp \NunIstTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \NunIstTenoreLyrics
				>>
				\new Staff { \NunIstOrgano }
				\new FiguredBass { \NunIstBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			genre = "D U E T T O"
			number = "2.2"
			title = "Gott am Creutze, lehre mich"
		}
		\score {
			<<
				\new Staff { \GottAmOrgano }
				\new FiguredBass { \GottAmBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			genre = "A C C O M P A G N A T O"
			number = "2.3"
			title = "Es ſchweben Seraphim von fern"
		}
		\paper { systems-per-page = #5 }
		\score {
			<<
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = "T"
						\new Voice = "Tenore" { \dynamicUp \EsSchwebenTenoreNotes }
					}
					\new Lyrics \lyricsto Tenore \EsSchwebenTenoreLyrics
				>>
				\new Staff { \EsSchwebenOrgano }
				\new FiguredBass { \EsSchwebenBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			genre = "A R I A"
			number = "2.4"
			title = "Hörts, Chriſten, das iſt unſer Glaube"
		}
		\score {
			<<
				\new Staff { \HoertsOrgano }
				\new FiguredBass { \HoertsBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			genre = "C O R O"
			number = "2.5"
			title = "Meine Seele dürſtet nach Gott"
		}
		\score {
			<<
				\new Staff { \MeineSeeleOrgano }
				\new FiguredBass { \MeineSeeleBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			genre = "C H O R A L"
			number = "2.6"
			title = "O! Freud, o! Luſt, o! Leben"
		}
		\paper { systems-per-page = #6 }
		\score {
			<<
				\new Staff { \OFreudOrgano }
				\new FiguredBass { \OFreudBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			genre = "A C C O M P A G N A T O   /   C O R O"
			number = "2.7"
			title = "Du ſchöner Morgenſtern"
		}
		\paper { systems-per-page = #5 }
		\score {
			<<
				\new ChoirStaff <<
					\new Staff {
						\set Staff.instrumentName = \markup \center-column { "A" "T" "B" }
						\new Voice = "Soli" { \dynamicUp \DuSchoenerSoliNotes }
					}
					\new Lyrics \lyricsto Soli \DuSchoenerSoliLyrics
				>>
				\new Staff { \DuSchoenerOrgano }
				\new FiguredBass { \DuSchoenerBassFigures }
			>>
		}
	}
	\bookpart {
		\header {
			genre = "C O R O"
			number = "2.8"
			title = "Verſöhner, heilges Gottes Lamm"
		}
		\score {
			<<
				\new Staff { \VersoehnerOrgano }
				\new FiguredBass { \VersoehnerBassFigures }
			>>
		}
	}
}
