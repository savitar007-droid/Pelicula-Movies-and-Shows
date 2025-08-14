const slides = [
  {
    image: 'John.jpeg',
    title: 'John <span>Wick</span>',
    languages: 'English | Hindi | Kannada',
    description: 'An ex-hitman comes out of retirement to track down the gangsters that killed his dog.'
  },
  {
    image: 'Dictator.jpeg',
    title: 'The <span>Dictator</span>',
    languages: 'English | Hindi | Tamil',
    description: 'If you want to laugh yourself out of bed. Click on Watch now.'
  },
  {
    image: 'Happyness.jpeg',
    title: 'The <span>Pursuit of Happyness</span>',
    languages: 'English | Hindi | Telugu',
    description: 'A Will Smith masterclass that shows "This moment of my life, this right here is called happiness."'
  },
  {
    image: 'Shutter.jpeg',
    title: 'Shutter <span>Island</span>',
    languages: 'English | Hindi | Tamil | Telugu | Kannada',
    description: 'A mindbending thriller. You will not understand it in one watch. So better keep it saved.'
  }
];

let currentIndex = 0;

const bgElement = document.querySelector('.background-slideshow');
const titleElement = document.getElementById('movie-title');
const langElement = document.getElementById('movie-languages');
const descElement = document.getElementById('movie-description');

function updateSlide(index) {
  const slide = slides[index];

  // Fade out current background
  bgElement.style.opacity = 0;

  setTimeout(() => {
    // Update background image
    bgElement.style.backgroundImage = `url('${slide.image}')`;
    // Fade in new background
    bgElement.style.opacity = 1;
  }, 500);

  // Update text content
  titleElement.innerHTML = slide.title;
  langElement.textContent = slide.languages;
  descElement.textContent = slide.description;
}

// Initial slide display
updateSlide(currentIndex);

// Change slide every 5 seconds
setInterval(() => {
  currentIndex = (currentIndex + 1) % slides.length;
  updateSlide(currentIndex);
}, 5000);
