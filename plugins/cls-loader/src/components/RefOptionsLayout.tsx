import { useCallback, useContext } from 'react';
import { RefOptionsContext } from './RefItem';

export default function RefOptionsLayout({ className }: { className: string }) {
  const { hideInherited, setHideInherited } = useContext(RefOptionsContext);
  const handleHideInherited = useCallback(() => {
    setHideInherited(!hideInherited);
  }, [hideInherited, setHideInherited]);

  return (
    <>
      <div className={className}>
        <div><b>Page Options</b></div>
        <label>
          <input checked={hideInherited} type="checkbox" onChange={handleHideInherited} />
          <span>Hide Inherited</span>
        </label>
        <div />
      </div>
    </>
  );
}
