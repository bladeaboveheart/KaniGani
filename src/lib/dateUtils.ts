/**
 * Formats a review's next_review ISO date string into Indonesian relative due text.
 */
export function formatDueTime(nextReviewStr: string): string {
  const nextReview = new Date(nextReviewStr);
  const now = new Date();

  const options: Intl.DateTimeFormatOptions = {
    day: 'numeric',
    month: 'short',
    hour: '2-digit',
    minute: '2-digit',
    hour12: false
  };

  const formattedDate = nextReview.toLocaleDateString('id-ID', options);

  if (nextReview <= now) {
    return `Review Sekarang (Due: ${formattedDate})`;
  } else {
    const diffMs = nextReview.getTime() - now.getTime();
    const diffHours = Math.ceil(diffMs / (1000 * 60 * 60));
    if (diffHours < 24) {
      return `Due dalam ${diffHours} jam (${formattedDate})`;
    } else {
      const diffDays = Math.ceil(diffHours / 24);
      return `Due dalam ${diffDays} hari (${formattedDate})`;
    }
  }
}

/**
 * Returns a short formatted time (e.g., "14:00" or "Hari ini 14:00")
 */
export function formatShortTime(dateStr: string): string {
  const date = new Date(dateStr);
  return date.toLocaleTimeString('id-ID', { hour: '2-digit', minute: '2-digit', hour12: false });
}
