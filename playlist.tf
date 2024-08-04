resource "spotify_playlist" "Bollywood" {
  name   = "Bollywood"
  tracks = ["37i9dQZF1DX0XUfTFmNBRM", "131yybV7A3TmC34a0qE8u8"]
}

resource "spotify_playlist" "My_Song" {
  name   = "My_Song"
  tracks = ["37i9dQZF1DX0XUfTFmNBRM"]
}

resource "spotify_playlist" "Shraddhas_Song" {
  name   = "Shraddhas_Song"
  tracks = ["37i9dQZF1DWX76Z8XDsZzF"]
}

data "spotify_search_track" "arijit_singh" {
    artist = "arijit singh"
  
}

resource "spotify_playlist" "arijit_singh" {
    name = "arijit singh"
    tracks = [data.spotify_search_track.arijit_singh.tracks[0].id, 
    data.spotify_search_track.arijit_singh.tracks[1].id,
    data.spotify_search_track.arijit_singh.tracks[2].id]
  
}
