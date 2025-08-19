/**
 * Date utilities that prevent hydration mismatches
 */

export function formatMeasurementDate(date: string | Date): string {
  try {
    const d = new Date(date);
    
    // Use a consistent format that doesn't depend on locale
    return d.toISOString().slice(0, 19).replace('T', ' ') + ' UTC';
  } catch (error) {
    return 'Invalid date';
  }
}

export function formatRelativeTime(date: string | Date): string {
  try {
    const measurementDate = new Date(date);
    const now = Date.now(); // Use Date.now() for consistency
    const diffMs = now - measurementDate.getTime();
    const diffHours = Math.round(diffMs / (1000 * 60 * 60));
    
    if (diffHours < 1) return 'Just now';
    if (diffHours < 24) return `${diffHours}h ago`;
    const diffDays = Math.round(diffHours / 24);
    return `${diffDays}d ago`;
  } catch (error) {
    return 'Invalid date';
  }
}

export function formatShortDate(date: string | Date): string {
  try {
    const d = new Date(date);
    return d.toISOString().slice(0, 10); // YYYY-MM-DD format
  } catch (error) {
    return 'Invalid date';
  }
}
