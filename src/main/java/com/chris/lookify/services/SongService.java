package com.chris.lookify.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chris.lookify.models.Song;
import com.chris.lookify.repositories.SongRepository;

@Service
public class SongService {
	@Autowired
	private SongRepository songRepository;
	
	public List<Song> allSongs() {
		return songRepository.findAll();
	}
	
	public Song addSong(Song song) {
		return songRepository.save(song);
	}
	
	public List<Song> findByArtist(String artist) {
		return songRepository.findByArtistContaining(artist);
	}
	
	public Song songById(Long id) {
		Optional<Song> optionalSong = songRepository.findById(id);
		if(optionalSong.isPresent()) {
			return optionalSong.get();
		}
		return null;
	}
	
	public void deleteSong(Song song) {
		songRepository.delete(song);
	}

}
