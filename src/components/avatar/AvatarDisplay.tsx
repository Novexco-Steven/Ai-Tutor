import { cn } from '@/utils/helpers';
import type { AvatarConfig } from '@/types';

interface AvatarDisplayProps {
  config: AvatarConfig;
  size?: 'sm' | 'md' | 'lg' | 'xl';
  className?: string;
  onClick?: () => void;
}

const sizeClasses = {
  sm: 'w-8 h-8',
  md: 'w-12 h-12',
  lg: 'w-20 h-20',
  xl: 'w-32 h-32'
};

export default function AvatarDisplay({ config, size = 'md', className, onClick }: AvatarDisplayProps) {
  const sizeClass = sizeClasses[size];

  // SVG-based avatar rendering
  return (
    <div
      className={cn(
        sizeClass,
        'relative rounded-full overflow-hidden',
        onClick && 'cursor-pointer hover:ring-2 hover:ring-primary-500 transition-all',
        className
      )}
      style={{ backgroundColor: config.background }}
      onClick={onClick}
    >
      <svg viewBox="0 0 100 100" className="w-full h-full">
        {/* Background */}
        <circle cx="50" cy="50" r="50" fill={config.background} />

        {/* Body/Outfit */}
        <ellipse cx="50" cy="95" rx="35" ry="25" fill={config.outfitColor} />

        {/* Head */}
        <circle cx="50" cy="45" r="30" fill={config.skinTone} />

        {/* Hair */}
        {config.hairStyle !== 'none' && (
          <HairStyle style={config.hairStyle} color={config.hairColor} />
        )}

        {/* Eyes */}
        <Eyes style={config.eyeStyle} color={config.eyeColor} />

        {/* Mouth */}
        <Mouth style={config.mouthStyle} />

        {/* Accessory */}
        {config.accessory && config.accessory !== 'none' && (
          <Accessory type={config.accessory} />
        )}
      </svg>
    </div>
  );
}

function HairStyle({ style, color }: { style: string; color: string }) {
  switch (style) {
    case 'short':
      return (
        <path
          d="M25 40 Q25 15 50 15 Q75 15 75 40 Q70 25 50 25 Q30 25 25 40"
          fill={color}
        />
      );
    case 'long':
      return (
        <>
          <path
            d="M20 45 Q20 10 50 10 Q80 10 80 45 L80 70 Q70 55 50 55 Q30 55 20 70 Z"
            fill={color}
          />
          <path
            d="M25 45 Q25 18 50 18 Q75 18 75 45"
            fill={color}
          />
        </>
      );
    case 'curly':
      return (
        <>
          <circle cx="30" cy="25" r="10" fill={color} />
          <circle cx="50" cy="18" r="12" fill={color} />
          <circle cx="70" cy="25" r="10" fill={color} />
          <circle cx="25" cy="40" r="8" fill={color} />
          <circle cx="75" cy="40" r="8" fill={color} />
        </>
      );
    case 'wavy':
      return (
        <path
          d="M22 45 Q20 20 35 15 Q50 10 65 15 Q80 20 78 45 Q75 30 65 25 Q50 20 35 25 Q25 30 22 45"
          fill={color}
        />
      );
    case 'ponytail':
      return (
        <>
          <path
            d="M25 40 Q25 15 50 15 Q75 15 75 40 Q70 25 50 25 Q30 25 25 40"
            fill={color}
          />
          <ellipse cx="80" cy="35" rx="8" ry="20" fill={color} transform="rotate(30 80 35)" />
        </>
      );
    case 'bun':
      return (
        <>
          <path
            d="M25 40 Q25 15 50 15 Q75 15 75 40 Q70 25 50 25 Q30 25 25 40"
            fill={color}
          />
          <circle cx="50" cy="10" r="12" fill={color} />
        </>
      );
    case 'spiky':
      return (
        <>
          <polygon points="50,5 55,25 45,25" fill={color} />
          <polygon points="35,10 45,28 30,25" fill={color} />
          <polygon points="65,10 70,25 55,28" fill={color} />
          <polygon points="25,20 35,35 20,35" fill={color} />
          <polygon points="75,20 80,35 65,35" fill={color} />
        </>
      );
    default:
      return null;
  }
}

function Eyes({ style, color }: { style: string; color: string }) {
  const baseY = 42;

  switch (style) {
    case 'round':
      return (
        <>
          <circle cx="40" cy={baseY} r="5" fill="white" />
          <circle cx="60" cy={baseY} r="5" fill="white" />
          <circle cx="40" cy={baseY} r="3" fill={color} />
          <circle cx="60" cy={baseY} r="3" fill={color} />
          <circle cx="41" cy={baseY - 1} r="1" fill="white" />
          <circle cx="61" cy={baseY - 1} r="1" fill="white" />
        </>
      );
    case 'almond':
      return (
        <>
          <ellipse cx="40" cy={baseY} rx="6" ry="4" fill="white" />
          <ellipse cx="60" cy={baseY} rx="6" ry="4" fill="white" />
          <circle cx="40" cy={baseY} r="2.5" fill={color} />
          <circle cx="60" cy={baseY} r="2.5" fill={color} />
        </>
      );
    case 'wide':
      return (
        <>
          <ellipse cx="38" cy={baseY} rx="7" ry="6" fill="white" />
          <ellipse cx="62" cy={baseY} rx="7" ry="6" fill="white" />
          <circle cx="38" cy={baseY} r="4" fill={color} />
          <circle cx="62" cy={baseY} r="4" fill={color} />
          <circle cx="39" cy={baseY - 1} r="1.5" fill="white" />
          <circle cx="63" cy={baseY - 1} r="1.5" fill="white" />
        </>
      );
    case 'sleepy':
      return (
        <>
          <path d="M34 {baseY} Q40 {baseY - 3} 46 {baseY}" stroke={color} strokeWidth="2" fill="none" />
          <path d="M54 {baseY} Q60 {baseY - 3} 66 {baseY}" stroke={color} strokeWidth="2" fill="none" />
        </>
      );
    case 'happy':
      return (
        <>
          <path d="M34 44 Q40 40 46 44" stroke={color} strokeWidth="2" fill="none" />
          <path d="M54 44 Q60 40 66 44" stroke={color} strokeWidth="2" fill="none" />
        </>
      );
    default:
      return (
        <>
          <circle cx="40" cy={baseY} r="4" fill={color} />
          <circle cx="60" cy={baseY} r="4" fill={color} />
        </>
      );
  }
}

function Mouth({ style }: { style: string }) {
  const baseY = 58;

  switch (style) {
    case 'smile':
      return (
        <path
          d="M40 {baseY} Q50 {baseY + 8} 60 {baseY}"
          stroke="#E75480"
          strokeWidth="2"
          fill="none"
          strokeLinecap="round"
        />
      );
    case 'grin':
      return (
        <path
          d="M38 {baseY} Q50 {baseY + 12} 62 {baseY}"
          stroke="#E75480"
          strokeWidth="2.5"
          fill="none"
          strokeLinecap="round"
        />
      );
    case 'neutral':
      return (
        <line x1="42" y1={baseY} x2="58" y2={baseY} stroke="#E75480" strokeWidth="2" strokeLinecap="round" />
      );
    case 'open':
      return (
        <ellipse cx="50" cy={baseY + 2} rx="6" ry="5" fill="#E75480" />
      );
    case 'surprised':
      return (
        <circle cx="50" cy={baseY + 2} r="5" fill="#E75480" />
      );
    default:
      return (
        <path
          d="M40 56 Q50 62 60 56"
          stroke="#E75480"
          strokeWidth="2"
          fill="none"
        />
      );
  }
}

function Accessory({ type }: { type: string }) {
  switch (type) {
    case 'glasses':
      return (
        <>
          <circle cx="40" cy="42" r="8" stroke="#333" strokeWidth="2" fill="none" />
          <circle cx="60" cy="42" r="8" stroke="#333" strokeWidth="2" fill="none" />
          <line x1="48" y1="42" x2="52" y2="42" stroke="#333" strokeWidth="2" />
          <line x1="32" y1="42" x2="25" y2="40" stroke="#333" strokeWidth="2" />
          <line x1="68" y1="42" x2="75" y2="40" stroke="#333" strokeWidth="2" />
        </>
      );
    case 'sunglasses':
      return (
        <>
          <rect x="30" y="38" width="18" height="10" rx="2" fill="#333" />
          <rect x="52" y="38" width="18" height="10" rx="2" fill="#333" />
          <line x1="48" y1="43" x2="52" y2="43" stroke="#333" strokeWidth="2" />
        </>
      );
    case 'headband':
      return (
        <rect x="20" y="25" width="60" height="6" rx="3" fill="#E74C3C" />
      );
    case 'bow':
      return (
        <>
          <circle cx="30" cy="20" r="8" fill="#E91E63" />
          <circle cx="30" cy="20" r="4" fill="#C2185B" />
        </>
      );
    case 'cap':
      return (
        <>
          <ellipse cx="50" cy="22" rx="28" ry="12" fill="#3498DB" />
          <rect x="20" y="20" width="60" height="8" fill="#3498DB" />
          <rect x="55" y="22" width="25" height="5" rx="2" fill="#2980B9" />
        </>
      );
    case 'crown':
      return (
        <>
          <polygon points="30,25 35,10 42,20 50,5 58,20 65,10 70,25" fill="#FFD700" />
          <rect x="30" y="25" width="40" height="5" fill="#FFD700" />
          <circle cx="35" cy="15" r="2" fill="#E74C3C" />
          <circle cx="50" cy="8" r="2" fill="#3498DB" />
          <circle cx="65" cy="15" r="2" fill="#2ECC71" />
        </>
      );
    default:
      return null;
  }
}
