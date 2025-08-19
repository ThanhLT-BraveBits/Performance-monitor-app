'use client';

import { useEffect } from 'react';

export function ClientWrapper({ children }: { children: React.ReactNode }) {
  useEffect(() => {
    // Remove any external modifications that might cause hydration issues
    const htmlElement = document.documentElement;
    
    // Remove any classes that might be added by browser extensions
    const externalClasses = ['mdl-js', 'mdl-upgrade'];
    externalClasses.forEach(className => {
      if (htmlElement.classList.contains(className)) {
        htmlElement.classList.remove(className);
      }
    });

    // Monitor for external changes and suppress them
    const observer = new MutationObserver((mutations) => {
      mutations.forEach((mutation) => {
        if (mutation.type === 'attributes' && mutation.attributeName === 'class') {
          const target = mutation.target as HTMLElement;
          if (target === htmlElement) {
            // Only keep our expected classes
            const expectedClasses = ['light', 'dark']; // Add any expected theme classes
            const currentClasses = Array.from(target.classList);
            const unwantedClasses = currentClasses.filter(
              cls => !expectedClasses.includes(cls) && externalClasses.includes(cls)
            );
            
            if (unwantedClasses.length > 0) {
              unwantedClasses.forEach(cls => target.classList.remove(cls));
            }
          }
        }
      });
    });

    // Start observing changes to the html element
    observer.observe(htmlElement, {
      attributes: true,
      attributeFilter: ['class']
    });

    // Cleanup observer on unmount
    return () => observer.disconnect();
  }, []);

  return <>{children}</>;
}
