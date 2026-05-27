export function getTypeLabel(type) {
  if (type === 'radical') return 'Radical'
  if (type === 'kanji') return 'Kanji'
  return 'Kosakata'
}

export function getTypeClass(type) {
  if (type === 'radical') return 'card--radical'
  if (type === 'kanji') return 'card--kanji'
  return 'card--vocab'
}

export function renderDashboard(stats) {
  const lessonCount = stats.lessonsAvailable
  const reviewCount = stats.reviewsDue

  const lessonCountEl = document.getElementById('lesson-count')
  const reviewCountEl = document.getElementById('review-count')
  if (lessonCountEl) lessonCountEl.textContent = lessonCount + ' item'
  if (reviewCountEl) reviewCountEl.textContent = reviewCount + ' item'

  const btnLesson = document.getElementById('btn-lesson')
  const btnReview = document.getElementById('btn-review')

  if (btnLesson) {
    if (lessonCount > 0) btnLesson.classList.remove('disabled')
    else btnLesson.classList.add('disabled')
  }

  if (btnReview) {
    if (reviewCount > 0) btnReview.classList.remove('disabled')
    else btnReview.classList.add('disabled')
  }

  const rad = stats.byType.radical
  const kan = stats.byType.kanji
  const voc = stats.byType.vocabulary

  const radPct = rad.total > 0 ? Math.round((rad.guru / rad.total) * 100) : 0
  const kanPct = kan.total > 0 ? Math.round((kan.guru / kan.total) * 100) : 0
  const vocPct = voc.total > 0 ? Math.round((voc.burned / voc.total) * 100) : 0

  setProgress('bar-radical', 'text-radical', radPct, `${rad.guru}/${rad.total} Guru`)
  setProgress('bar-kanji', 'text-kanji', kanPct, `${kan.guru}/${kan.total} Guru`)
  setProgress('bar-vocab', 'text-vocab', vocPct, `${voc.burned}/${voc.total} Burned`)

  const d = stats.distribution
  const apprentice = (d[1] || 0) + (d[2] || 0) + (d[3] || 0) + (d[4] || 0)
  const guru = (d[5] || 0) + (d[6] || 0)
  const master = d[7] || 0
  const enlightened = d[8] || 0
  const burned = d[9] || 0

  setTextContent('srs-apprentice', apprentice)
  setTextContent('srs-guru', guru)
  setTextContent('srs-master', master)
  setTextContent('srs-enlightened', enlightened)
  setTextContent('srs-burned', burned)
}

function setProgress(barId, textId, pct, label) {
  const bar = document.getElementById(barId)
  const text = document.getElementById(textId)
  if (bar) bar.style.width = pct + '%'
  if (text) text.textContent = label
}

function setTextContent(id, value) {
  const el = document.getElementById(id)
  if (el) el.textContent = value
}

export function renderLessonInfo(item) {
  const card = document.getElementById('info-card')
  if (!card) return

  card.className = 'card ' + getTypeClass(item.type)
  setTextContent('info-type-badge', getTypeLabel(item.type))
  setTextContent('info-character', item.character)
  setTextContent('info-meaning', item.meaning_id)

  const readingRow = document.getElementById('info-reading-row')
  const readingVal = document.getElementById('info-reading')
  if (readingRow && readingVal) {
    if (item.reading) {
      readingRow.classList.remove('hidden')
      readingVal.textContent = item.reading
    } else {
      readingRow.classList.add('hidden')
    }
  }
}

export function renderLessonQuiz(item, cardType) {
  const card = document.getElementById('quiz-card')
  if (!card) return

  card.className = 'card ' + getTypeClass(item.type)
  setTextContent('quiz-type-badge', getTypeLabel(item.type))
  setTextContent('quiz-character', item.character)
  setTextContent('quiz-question', cardType === 'meaning' ? 'Apa arti karakter ini?' : 'Apa bacaan karakter ini?')

  const input = document.getElementById('quiz-input')
  if (input) {
    input.value = ''
    input.className = 'review-input'
    input.disabled = false
    input.focus()
  }

  hideFeedback('quiz-feedback')
  toggleHidden('btn-quiz-submit', false)
  toggleHidden('btn-quiz-next', true)
}

export function renderReviewCard(item, cardType) {
  const card = document.getElementById('review-card')
  if (!card) return

  card.className = 'card ' + getTypeClass(item.type)
  setTextContent('review-type-badge', getTypeLabel(item.type))
  setTextContent('review-character', item.character)
  setTextContent('review-card-type', cardType === 'meaning' ? 'Arti' : 'Bacaan')

  const input = document.getElementById('review-input')
  if (input) {
    input.value = ''
    input.className = 'review-input'
    input.disabled = false
    input.focus()
  }

  hideFeedback('review-feedback')
  const correctAnswerEl = document.getElementById('review-correct-answer')
  if (correctAnswerEl) correctAnswerEl.classList.add('hidden')
  toggleHidden('btn-review-submit', false)
  toggleHidden('btn-review-next', true)
}

export function showFeedback(containerId, isCorrect, correctAnswer = '') {
  const container = document.getElementById(containerId)
  if (!container) return

  container.className = `feedback ${isCorrect ? 'feedback--correct' : 'feedback--wrong'}`
  container.classList.remove('hidden')

  const textEl = container.querySelector('.feedback-text') || container
  if (isCorrect) {
    textEl.textContent = 'Benar!'
  } else {
    const answerEl = container.querySelector('.feedback-answer')
    if (answerEl && correctAnswer) {
      textEl.textContent = 'Salah!'
      answerEl.textContent = `Jawaban benar: ${correctAnswer}`
      answerEl.classList.remove('hidden')
    } else {
      textEl.textContent = `Salah. Jawaban: ${correctAnswer}`
    }
  }
}

export function hideFeedback(containerId) {
  const container = document.getElementById(containerId)
  if (container) container.classList.add('hidden')
}

export function renderSummary(results) {
  setTextContent('summary-correct', results.correct)
  setTextContent('summary-wrong', results.wrong)

  if (results.items !== undefined) {
    setTextContent('summary-items', results.items)
  }

  if (results.accuracy !== undefined) {
    setTextContent('summary-accuracy', results.accuracy + '%')
  }
}

export function showError(message) {
  const existing = document.getElementById('toast-error')
  if (existing) existing.remove()

  const toast = document.createElement('div')
  toast.id = 'toast-error'
  toast.style.cssText = `
    position: fixed; bottom: 1.5rem; left: 50%; transform: translateX(-50%);
    background: rgba(255, 71, 87, 0.95); color: #fff;
    padding: 0.75rem 1.5rem; border-radius: 8px;
    font-size: 0.875rem; font-weight: 600;
    z-index: 9999; box-shadow: 0 4px 20px rgba(0,0,0,0.4);
    animation: fadeIn 0.2s ease;
  `
  toast.textContent = message
  document.body.appendChild(toast)
  setTimeout(() => toast.remove(), 4000)
}

export function showLoading(show) {
  const el = document.getElementById('loading')
  if (!el) return
  if (show) el.classList.remove('hidden')
  else el.classList.add('hidden')
}

function toggleHidden(id, hidden) {
  const el = document.getElementById(id)
  if (!el) return
  if (hidden) el.classList.add('hidden')
  else el.classList.remove('hidden')
}
