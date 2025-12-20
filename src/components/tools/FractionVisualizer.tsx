import { useState } from 'react';
import Card from '../shared/Card';
import Button from '../shared/Button';
import { PieChart, BarChart3, Grid3X3, Plus, Minus } from 'lucide-react';
import { cn } from '@/utils/helpers';

type VisualizationType = 'circle' | 'bar' | 'grid';

interface Fraction {
  numerator: number;
  denominator: number;
}

export default function FractionVisualizer() {
  const [fraction1, setFraction1] = useState<Fraction>({ numerator: 1, denominator: 2 });
  const [fraction2, setFraction2] = useState<Fraction>({ numerator: 1, denominator: 4 });
  const [visualType, setVisualType] = useState<VisualizationType>('circle');
  const [showComparison, setShowComparison] = useState(false);

  const updateFraction = (
    setter: React.Dispatch<React.SetStateAction<Fraction>>,
    field: 'numerator' | 'denominator',
    delta: number
  ) => {
    setter(prev => {
      const newValue = prev[field] + delta;
      if (field === 'numerator') {
        return { ...prev, numerator: Math.max(0, Math.min(newValue, prev.denominator)) };
      } else {
        return { ...prev, denominator: Math.max(1, Math.min(newValue, 12)) };
      }
    });
  };

  const getDecimal = (f: Fraction) => f.numerator / f.denominator;
  const getPercent = (f: Fraction) => Math.round((f.numerator / f.denominator) * 100);

  const simplifyFraction = (f: Fraction): Fraction => {
    const gcd = (a: number, b: number): number => b === 0 ? a : gcd(b, a % b);
    const divisor = gcd(f.numerator, f.denominator);
    return { numerator: f.numerator / divisor, denominator: f.denominator / divisor };
  };

  return (
    <div className="space-y-6">
      {/* Visualization Type Selector */}
      <div className="flex justify-center gap-4">
        {[
          { type: 'circle' as VisualizationType, icon: PieChart, label: 'Circle' },
          { type: 'bar' as VisualizationType, icon: BarChart3, label: 'Bar' },
          { type: 'grid' as VisualizationType, icon: Grid3X3, label: 'Grid' }
        ].map(({ type, icon: Icon, label }) => (
          <button
            key={type}
            onClick={() => setVisualType(type)}
            className={cn(
              "flex items-center gap-2 px-4 py-2 rounded-lg transition-colors",
              visualType === type
                ? "bg-purple-600 text-white"
                : "bg-slate-700 text-slate-300 hover:bg-slate-600"
            )}
          >
            <Icon className="w-5 h-5" />
            {label}
          </button>
        ))}
      </div>

      {/* Main Visualization */}
      <div className={cn(
        "grid gap-6",
        showComparison ? "grid-cols-1 md:grid-cols-2" : "grid-cols-1"
      )}>
        {/* Fraction 1 */}
        <FractionCard
          fraction={fraction1}
          visualType={visualType}
          color="#8B5CF6"
          onUpdate={(field, delta) => updateFraction(setFraction1, field, delta)}
          label="Fraction 1"
        />

        {/* Fraction 2 */}
        {showComparison && (
          <FractionCard
            fraction={fraction2}
            visualType={visualType}
            color="#EC4899"
            onUpdate={(field, delta) => updateFraction(setFraction2, field, delta)}
            label="Fraction 2"
          />
        )}
      </div>

      {/* Toggle Comparison */}
      <div className="flex justify-center">
        <Button
          variant="secondary"
          onClick={() => setShowComparison(!showComparison)}
          className="bg-slate-700 border-slate-600"
        >
          {showComparison ? 'Hide Comparison' : 'Compare Fractions'}
        </Button>
      </div>

      {/* Comparison Result */}
      {showComparison && (
        <Card className="bg-slate-800/50 border-slate-700 text-center">
          <h3 className="text-lg font-semibold text-white mb-4">Comparison</h3>
          <div className="flex items-center justify-center gap-4 text-2xl">
            <span className="text-purple-400 font-bold">
              {fraction1.numerator}/{fraction1.denominator}
            </span>
            <span className="text-slate-400">
              {getDecimal(fraction1) > getDecimal(fraction2) ? '>' :
               getDecimal(fraction1) < getDecimal(fraction2) ? '<' : '='}
            </span>
            <span className="text-pink-400 font-bold">
              {fraction2.numerator}/{fraction2.denominator}
            </span>
          </div>
          <p className="text-slate-400 mt-4">
            {getPercent(fraction1)}% vs {getPercent(fraction2)}%
          </p>
        </Card>
      )}

      {/* Info Cards */}
      <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
        <Card className="bg-slate-800/50 border-slate-700 text-center">
          <h4 className="text-slate-400 text-sm mb-2">Decimal</h4>
          <p className="text-2xl font-bold text-white">{getDecimal(fraction1).toFixed(3)}</p>
        </Card>
        <Card className="bg-slate-800/50 border-slate-700 text-center">
          <h4 className="text-slate-400 text-sm mb-2">Percentage</h4>
          <p className="text-2xl font-bold text-white">{getPercent(fraction1)}%</p>
        </Card>
        <Card className="bg-slate-800/50 border-slate-700 text-center">
          <h4 className="text-slate-400 text-sm mb-2">Simplified</h4>
          <p className="text-2xl font-bold text-white">
            {simplifyFraction(fraction1).numerator}/{simplifyFraction(fraction1).denominator}
          </p>
        </Card>
      </div>
    </div>
  );
}

interface FractionCardProps {
  fraction: Fraction;
  visualType: VisualizationType;
  color: string;
  onUpdate: (field: 'numerator' | 'denominator', delta: number) => void;
  label: string;
}

function FractionCard({ fraction, visualType, color, onUpdate, label }: FractionCardProps) {
  return (
    <Card className="bg-slate-800/50 border-slate-700">
      <h3 className="text-lg font-semibold text-white mb-4 text-center">{label}</h3>

      {/* Visualization */}
      <div className="flex justify-center mb-6">
        {visualType === 'circle' && (
          <CircleVisualization fraction={fraction} color={color} />
        )}
        {visualType === 'bar' && (
          <BarVisualization fraction={fraction} color={color} />
        )}
        {visualType === 'grid' && (
          <GridVisualization fraction={fraction} color={color} />
        )}
      </div>

      {/* Fraction Display */}
      <div className="flex justify-center items-center gap-6 mb-4">
        <div className="flex flex-col items-center">
          <div className="flex items-center gap-2 mb-1">
            <button
              onClick={() => onUpdate('numerator', -1)}
              className="p-1 rounded bg-slate-700 hover:bg-slate-600 text-white"
            >
              <Minus className="w-4 h-4" />
            </button>
            <span className="text-3xl font-bold text-white w-12 text-center">
              {fraction.numerator}
            </span>
            <button
              onClick={() => onUpdate('numerator', 1)}
              className="p-1 rounded bg-slate-700 hover:bg-slate-600 text-white"
            >
              <Plus className="w-4 h-4" />
            </button>
          </div>
          <div className="w-24 h-1 bg-white my-2" />
          <div className="flex items-center gap-2">
            <button
              onClick={() => onUpdate('denominator', -1)}
              className="p-1 rounded bg-slate-700 hover:bg-slate-600 text-white"
            >
              <Minus className="w-4 h-4" />
            </button>
            <span className="text-3xl font-bold text-white w-12 text-center">
              {fraction.denominator}
            </span>
            <button
              onClick={() => onUpdate('denominator', 1)}
              className="p-1 rounded bg-slate-700 hover:bg-slate-600 text-white"
            >
              <Plus className="w-4 h-4" />
            </button>
          </div>
        </div>
      </div>

      {/* Labels */}
      <div className="text-center text-slate-400 text-sm">
        <span style={{ color }}>{fraction.numerator} parts</span>
        <span> out of </span>
        <span className="text-white">{fraction.denominator} total</span>
      </div>
    </Card>
  );
}

function CircleVisualization({ fraction, color }: { fraction: Fraction; color: string }) {
  const { numerator, denominator } = fraction;
  const slices = [];
  const anglePerSlice = 360 / denominator;

  for (let i = 0; i < denominator; i++) {
    const startAngle = i * anglePerSlice - 90;
    const endAngle = startAngle + anglePerSlice;
    const filled = i < numerator;

    const start = polarToCartesian(100, 100, 80, startAngle);
    const end = polarToCartesian(100, 100, 80, endAngle);
    const largeArcFlag = anglePerSlice > 180 ? 1 : 0;

    const d = [
      `M 100 100`,
      `L ${start.x} ${start.y}`,
      `A 80 80 0 ${largeArcFlag} 1 ${end.x} ${end.y}`,
      `Z`
    ].join(' ');

    slices.push(
      <path
        key={i}
        d={d}
        fill={filled ? color : '#374151'}
        stroke="#1E293B"
        strokeWidth="2"
      />
    );
  }

  return (
    <svg width="200" height="200" viewBox="0 0 200 200">
      {slices}
    </svg>
  );
}

function polarToCartesian(cx: number, cy: number, r: number, angle: number) {
  const rad = (angle * Math.PI) / 180;
  return {
    x: cx + r * Math.cos(rad),
    y: cy + r * Math.sin(rad)
  };
}

function BarVisualization({ fraction, color }: { fraction: Fraction; color: string }) {
  const { numerator, denominator } = fraction;

  return (
    <div className="w-full max-w-xs">
      <div className="flex gap-1">
        {Array.from({ length: denominator }).map((_, i) => (
          <div
            key={i}
            className="flex-1 h-20 rounded transition-colors"
            style={{ backgroundColor: i < numerator ? color : '#374151' }}
          />
        ))}
      </div>
    </div>
  );
}

function GridVisualization({ fraction, color }: { fraction: Fraction; color: string }) {
  const { numerator, denominator } = fraction;
  const cols = denominator <= 6 ? denominator : Math.ceil(Math.sqrt(denominator));

  return (
    <div
      className="grid gap-1"
      style={{ gridTemplateColumns: `repeat(${cols}, 1fr)` }}
    >
      {Array.from({ length: denominator }).map((_, i) => (
        <div
          key={i}
          className="w-10 h-10 rounded transition-colors"
          style={{ backgroundColor: i < numerator ? color : '#374151' }}
        />
      ))}
    </div>
  );
}
