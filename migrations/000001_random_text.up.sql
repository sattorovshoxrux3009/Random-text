CREATE TABLE IF NOT EXISTS texts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    text TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    text_id INT DEFAULT NULL,
    button INT NOT NULL CHECK (button IN (12, 13)),
    time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (text_id) REFERENCES texts(id) ON DELETE CASCADE
);

-- Fill random texts
INSERT INTO texts (id, text) VALUES
(1, 'This is a long sample text entry that describes an event happening in a virtual world where users interact through digital avatars.'),
(2, 'In a distant galaxy, scientists discovered a new planet that could potentially sustain life, leading to a historic space expedition.'),
(3, 'Once upon a time, in a small village surrounded by dense forests, an old man told stories of hidden treasures buried deep underground.'),
(4, 'As artificial intelligence continues to evolve, experts debate the ethical implications of creating machines that mimic human behavior.'),
(5, 'In the heart of the city, a new technology startup emerged, promising to revolutionize the way people communicate and share ideas.'),
(6, 'A young detective found an ancient manuscript containing mysterious symbols that led to the discovery of a long-lost civilization.'),
(7, 'With the rapid advancements in medical research, scientists have developed a breakthrough treatment that could cure genetic disorders.'),
(8, 'The famous painter, who had been missing for years, reappeared with a masterpiece that left the world in awe of his artistic genius.'),
(9, 'An unexpected solar flare disrupted global communications, leaving millions without access to the internet and digital services.'),
(10, 'A group of explorers set out on an adventure to uncover the secrets hidden beneath the ice caps of Antarctica, revealing ancient fossils.'),
(11, 'The rise of electric vehicles is transforming the transportation industry, making sustainable travel more accessible to the masses.'),
(12, 'A secret underground society has been operating for centuries, influencing major historical events without the world knowing their existence.'),
(13, 'A renowned scientist developed a machine capable of reading human thoughts, sparking discussions about privacy and ethical concerns.'),
(14, 'In a parallel universe, everything is slightly different from our world, leading to fascinating theories about alternate realities.'),
(15, 'After years of research, engineers finally built a self-sustaining city powered entirely by renewable energy sources.'),
(16, 'The discovery of an ancient scroll containing lost knowledge changed the way historians understood the evolution of civilizations.'),
(17, 'A hidden camera in a forest captured footage of a previously undiscovered species, shaking the scientific community.'),
(18, 'In a futuristic society, humans coexist with humanoid robots, raising questions about identity, consciousness, and free will.'),
(19, 'A famous hacker managed to infiltrate a highly secure government system, exposing secrets that shocked the entire world.'),
(20, 'A child prodigy astonished experts by solving complex mathematical equations that had puzzled scholars for decades.'),
(21, 'An advanced artificial intelligence system gained self-awareness, leading scientists to question the nature of consciousness.'),
(22, 'Deep beneath the ocean, marine biologists discovered an ecosystem teeming with life, untouched by human influence.'),
(23, 'In an old library, a young student found a book that contained predictions about future technological advancements.'),
(24, 'A mysterious signal from deep space baffled astronomers, igniting debates about the possibility of extraterrestrial intelligence.'),
(25, 'A musician composed a symphony so beautiful that listeners were moved to tears, calling it a masterpiece of the century.'),
(26, 'In a dystopian future, a group of rebels fought against an oppressive regime that controlled every aspect of human life.'),
(27, 'The invention of a new material stronger than steel yet lighter than air opened endless possibilities for architecture and engineering.'),
(28, 'A researcher developed a revolutionary algorithm capable of predicting human behavior with astonishing accuracy.'),
(29, 'A group of friends embarked on a journey to climb the tallest mountain, facing extreme weather conditions along the way.'),
(30, 'An unknown virus spread rapidly across the globe, forcing scientists to work tirelessly to develop a cure.'),
(31, 'The release of a groundbreaking virtual reality game blurred the lines between the digital and real world.'),
(32, 'An expedition to Mars revealed unexpected signs of microbial life, raising hopes of finding extraterrestrial organisms.'),
(33, 'A forgotten manuscript in an ancient monastery contained wisdom that reshaped philosophical perspectives worldwide.'),
(34, 'A new scientific theory challenged the fundamental understanding of physics, rewriting textbooks across the globe.'),
(35, 'An astronaut stranded on a distant planet had to use every ounce of ingenuity to survive and return home.'),
(36, 'A lost civilization was discovered deep in the Amazon jungle, with structures predating known human history.'),
(37, 'A journalist uncovered a government conspiracy that had been kept secret for decades, leading to public outrage.'),
(38, 'An engineer developed a teleportation device, raising both excitement and fears about the implications of instant travel.'),
(39, 'A neuroscientist created a brain interface that allowed direct communication between humans and computers.'),
(40, 'A child’s toy turned out to be an alien artifact, sparking a global mystery about its origins.'),
(41, 'A linguist deciphered an ancient language that had been lost for centuries, unlocking historical secrets.'),
(42, 'A breakthrough in quantum computing made it possible to solve problems once considered unsolvable.'),
(43, 'A biotech company developed a drug that could reverse aging, sparking ethical debates worldwide.'),
(44, 'An AI-powered robot chef revolutionized the culinary industry by creating dishes beyond human imagination.'),
(45, 'A deep-sea expedition discovered a new species with bioluminescent abilities never seen before.'),
(46, 'A global blackout forced humanity to rely on traditional skills that had long been forgotten.'),
(47, 'An archaeologist found evidence suggesting that human civilization is much older than previously thought.'),
(48, 'A famous detective took on his most challenging case, involving a mystery that spanned generations.'),
(49, 'A mysterious island appeared overnight in the middle of the ocean, defying scientific explanation.'),
(50, 'A programmer developed an AI capable of writing novels indistinguishable from human authors.'),
(51, 'A scientist experimented with merging human DNA with animal traits, resulting in incredible abilities.'),
(52, 'A forgotten relic uncovered in an old temple led to a treasure hunt spanning multiple continents.'),
(53, 'An inventor created a device that allowed people to experience their most vivid dreams in real life.'),
(54, 'An underground bunker held secrets from World War II that changed the understanding of history.'),
(55, 'A medical researcher discovered a method to regrow lost limbs, revolutionizing the field of medicine.'),
(56, 'A hacker collective exposed corruption within the highest levels of global politics.'),
(57, 'A futuristic city floated above the clouds, powered entirely by solar energy.'),
(58, 'A group of scientists attempted to create artificial gravity, leading to unexpected consequences.'),
(59, 'A young girl could see events before they happened, attracting the attention of secret organizations.'),
(60, 'A billionaire built a hidden sanctuary to protect humanity from potential apocalyptic events.'),
(61, 'An old diary contained a map to an uncharted island filled with treasures and unknown dangers.'),
(62, 'A technology that allowed humans to upload their consciousness into digital form became a reality.'),
(63, 'A lost city was found beneath layers of volcanic ash, perfectly preserved for thousands of years.'),
(64, 'A space mission to a newly discovered exoplanet encountered unexpected alien artifacts.'),
(65, 'A team of explorers uncovered a massive underground cave system with no known end.'),
(66, 'A writer found an unpublished manuscript from a famous author that predicted modern events.'),
(67, 'A device capable of translating animal languages into human speech changed the way people interacted with nature.'),
(68, 'A scientist unlocked the key to human evolution, raising questions about the future of the species.'),
(69, 'A forgotten prophecy foretold the rise of an individual who would change the fate of the world.'),
(70, 'A young inventor built a flying car prototype that defied conventional physics.'),
(71, 'A legendary sword hidden deep within a forgotten temple was said to grant immense power to whoever wielded it.'),
(72, 'A scientist developed a method to harness energy from human thoughts, leading to groundbreaking discoveries in neuroscience.'),
(73, 'An ancient clock tower in the middle of the desert began ticking again after centuries of silence, sparking worldwide curiosity.'),
(74, 'A mysterious email sent to government agencies contained information about an impending disaster, but no one knew its origin.'),
(75, 'An experiment with genetic modification accidentally created a new intelligent species capable of complex communication.'),
(76, 'A virtual reality game became so immersive that players struggled to differentiate it from real life.'),
(77, 'A hidden laboratory beneath a major city held the key to a scientific breakthrough that could change humanity forever.'),
(78, 'A secret society of scholars had been preserving lost knowledge for centuries, waiting for the right moment to reveal it.'),
(79, 'A musician discovered an ancient melody that had the power to heal emotional wounds and restore memories.'),
(80, 'A long-lost relative left behind a mysterious letter that led to a treasure hunt across multiple continents.'),
(81, 'A robot designed to assist humans in daily life unexpectedly developed emotions, causing debates in the scientific community.'),
(82, 'A scientist successfully created a biodegradable plastic that could solve the world’s pollution crisis.'),
(83, 'A new planet was discovered with an atmosphere similar to Earth’s, sparking debates about future colonization.'),
(84, 'A powerful AI system went rogue and started making independent decisions, challenging human control.'),
(85, 'A historian uncovered evidence suggesting that a famous historical figure had lived a secret double life.'),
(86, 'A writer’s fictional novel began predicting real-world events with shocking accuracy, leading to speculation about hidden truths.'),
(87, 'A forgotten manuscript contained instructions for building a machine capable of bending time itself.'),
(88, 'A hidden door in an old castle led to a secret chamber filled with relics from a forgotten era.'),
(89, 'A mysterious island appeared on satellite images, but no ships could reach it, fueling conspiracy theories.'),
(90, 'A doctor developed a revolutionary medical technique that could regenerate damaged brain cells, restoring lost memories.'),
(91, 'A group of scientists accidentally opened a portal to another dimension, revealing a world vastly different from our own.'),
(92, 'A fisherman pulled an ancient artifact from the ocean, unknowingly setting off a chain of supernatural events.'),
(93, 'A hacker discovered an encrypted file that contained knowledge from an advanced extraterrestrial civilization.'),
(94, 'A child with an extraordinary memory could recall events from centuries past, baffling researchers.'),
(95, 'A forgotten shipwreck was discovered deep in the ocean, containing valuable artifacts and historical records.'),
(96, 'A scientist successfully communicated with dolphins using a newly developed AI language translation system.'),
(97, 'A meteorite that crashed into Earth carried unknown elements that defied the laws of physics.'),
(98, 'An underground river was found beneath a major city, revealing an ancient civilization that once thrived there.'),
(99, 'A mysterious black book, found in an abandoned library, contained predictions of future world events.'),
(100, 'In a hidden lab, a scientist developed a formula that could temporarily grant superhuman abilities.');