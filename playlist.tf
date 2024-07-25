resource "spotify_playlist" "CubaanPertama"{
    name = "CubaanPertama"
    tracks = ["2OpBganfGk2GVdSlRdxzaX", "4FyesJzVpA39hbYvcseO2d"]
}

data "spotify_search_track" "Juicy_Luicy" {
    artist = "Juicy Luicy"
}

data "spotify_search_track" "Noh_Salleh" {
    artist = "Noh Salleh"
}

data "spotify_search_track" "Payung_Teduh" {
    artist = "Payung Teduh"
}

data "spotify_search_track" "Sal_Priadi" {
    artist = "Sal Priadi"
}

resource "spotify_playlist" "Gegendang"{
    name = "Gegendang"
    tracks = [data.spotify_search_track.Juicy_Luicy.tracks[3].id, 
              data.spotify_search_track.Noh_Salleh.tracks[7].id, 
              data.spotify_search_track.Payung_Teduh.tracks[8].id, 
              data.spotify_search_track.Sal_Priadi.tracks[6].id, 
              data.spotify_search_track.Juicy_Luicy.tracks[0].id,
              data.spotify_search_track.Noh_Salleh.tracks[3].id]
}