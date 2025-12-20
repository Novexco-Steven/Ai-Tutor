import { useState } from 'react';
import Card from '../shared/Card';
import Button from '../shared/Button';
import { Plus, Minus, ArrowRight, RotateCcw } from 'lucide-react';
import { cn } from '@/utils/helpers';

interface NumberLineMarker {
  position: number;
  color: string;
  label?: string;
}

interface Operation {
  start: number;
  operation: '+' | '-';
  amount: number;
  color: string;
}

const COLORS = ['#3B82F6', '#EF4444', '#10B981', '#F59E0B', '#8B5CF6'];

export default function NumberLine() {
  const [range, setRange] = useState({ min: -10, max: 10 });
  const [markers, setMarkers] = useState<NumberLineMarker[]>([]);
  const [operations, setOperations] = useState<Operation[]>([]);
  const [currentNumber, setCurrentNumber] = useState(0);
  const [operationAmount, setOperationAmount] = useState(3);
  const [showFractions, setShowFractions] = useState(false);

  const lineWidth = 600;

  const getXPosition = (n: number) => {
    return ((n - range.min) / (range.max - range.min)) * lineWidth;
  };

  const addMarker = (position: number) => {
    if (markers.some(m => m.position === position)) return;
    setMarkers(prev => [
      ...prev,
      {
        position,
        color: COLORS[prev.length % COLORS.length],
        label: position.toString()
      }
    ]);
  };

  const performOperation = (op: '+' | '-') => {
    const newPosition = op === '+'
      ? currentNumber + operationAmount
      : currentNumber - operationAmount;

    // Clamp to range
    const clampedPosition = Math.max(range.min, Math.min(range.max, newPosition));

    setOperations(prev => [
      ...prev,
      {
        start: currentNumber,
        operation: op,
        amount: operationAmount,
        color: COLORS[prev.length % COLORS.length]
      }
    ]);

    setCurrentNumber(clampedPosition);
    addMarker(clampedPosition);
  };

  const reset = () => {
    setMarkers([]);
    setOperations([]);
    setCurrentNumber(0);
  };

  const handleLineClick = (e: React.MouseEvent<SVGSVGElement>) => {
    const svg = e.currentTarget;
    const rect = svg.getBoundingClientRect();
    const x = e.clientX - rect.left;
    const position = Math.round((x / lineWidth) * (range.max - range.min) + range.min);
    addMarker(position);
    setCurrentNumber(position);
  };

  return (
    <div className="space-y-6">
      {/* Number Line Visualization */}
      <Card className="bg-slate-800/50 border-slate-700 overflow-x-auto">
        <div className="p-4 min-w-[650px]">
          <svg
            width={lineWidth + 50}
            height="150"
            onClick={handleLineClick}
            className="cursor-pointer"
          >
            {/* Main line */}
            <line
              x1="25"
              y1="75"
              x2={lineWidth + 25}
              y2="75"
              stroke="#64748B"
              strokeWidth="3"
            />

            {/* Arrows */}
            <polygon
              points="15,75 30,68 30,82"
              fill="#64748B"
            />
            <polygon
              points={`${lineWidth + 35},75 ${lineWidth + 20},68 ${lineWidth + 20},82`}
              fill="#64748B"
            />

            {/* Tick marks and labels */}
            {Array.from({ length: range.max - range.min + 1 }).map((_, i) => {
              const value = range.min + i;
              const x = getXPosition(value) + 25;
              const isZero = value === 0;
              const isMajor = value % 5 === 0;

              return (
                <g key={value}>
                  <line
                    x1={x}
                    y1={isZero ? 55 : isMajor ? 60 : 65}
                    x2={x}
                    y2={isZero ? 95 : isMajor ? 90 : 85}
                    stroke={isZero ? '#FFF' : '#64748B'}
                    strokeWidth={isZero ? 3 : isMajor ? 2 : 1}
                  />
                  {(isMajor || isZero || showFractions) && (
                    <text
                      x={x}
                      y="115"
                      fill={isZero ? '#FFF' : '#94A3B8'}
                      fontSize="12"
                      textAnchor="middle"
                    >
                      {value}
                    </text>
                  )}
                </g>
              );
            })}

            {/* Operations (jump arrows) */}
            {operations.map((op, i) => {
              const startX = getXPosition(op.start) + 25;
              const endX = getXPosition(op.start + (op.operation === '+' ? op.amount : -op.amount)) + 25;
              const midY = 40 - i * 15;

              return (
                <g key={i}>
                  {/* Arc path */}
                  <path
                    d={`M ${startX} 75 Q ${(startX + endX) / 2} ${midY} ${endX} 75`}
                    fill="none"
                    stroke={op.color}
                    strokeWidth="2"
                    strokeDasharray="4"
                  />
                  {/* Arrow head */}
                  <circle
                    cx={endX}
                    cy="75"
                    r="4"
                    fill={op.color}
                  />
                  {/* Label */}
                  <text
                    x={(startX + endX) / 2}
                    y={midY - 5}
                    fill={op.color}
                    fontSize="12"
                    textAnchor="middle"
                  >
                    {op.operation}{op.amount}
                  </text>
                </g>
              );
            })}

            {/* Markers */}
            {markers.map((marker, i) => {
              const x = getXPosition(marker.position) + 25;
              return (
                <g key={i}>
                  <circle
                    cx={x}
                    cy="75"
                    r="10"
                    fill={marker.color}
                    stroke="#FFF"
                    strokeWidth="2"
                  />
                  <text
                    x={x}
                    y="135"
                    fill={marker.color}
                    fontSize="14"
                    fontWeight="bold"
                    textAnchor="middle"
                  >
                    {marker.position}
                  </text>
                </g>
              );
            })}

            {/* Current position indicator */}
            <g>
              <polygon
                points={`${getXPosition(currentNumber) + 25},50 ${getXPosition(currentNumber) + 20},35 ${getXPosition(currentNumber) + 30},35`}
                fill="#10B981"
              />
              <text
                x={getXPosition(currentNumber) + 25}
                y="28"
                fill="#10B981"
                fontSize="12"
                fontWeight="bold"
                textAnchor="middle"
              >
                Here: {currentNumber}
              </text>
            </g>
          </svg>
        </div>
        <p className="text-center text-slate-400 text-sm pb-4">
          Click on the number line to place markers
        </p>
      </Card>

      {/* Controls */}
      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        {/* Operations */}
        <Card className="bg-slate-800/50 border-slate-700">
          <h3 className="text-lg font-semibold text-white mb-4">Jump Along the Line</h3>

          <div className="mb-4">
            <label className="text-slate-400 text-sm mb-2 block">Jump Amount</label>
            <div className="flex items-center gap-4">
              <button
                onClick={() => setOperationAmount(Math.max(1, operationAmount - 1))}
                className="p-2 rounded bg-slate-700 hover:bg-slate-600 text-white"
              >
                <Minus className="w-4 h-4" />
              </button>
              <span className="text-2xl font-bold text-white w-12 text-center">
                {operationAmount}
              </span>
              <button
                onClick={() => setOperationAmount(Math.min(10, operationAmount + 1))}
                className="p-2 rounded bg-slate-700 hover:bg-slate-600 text-white"
              >
                <Plus className="w-4 h-4" />
              </button>
            </div>
          </div>

          <div className="flex gap-4">
            <Button
              variant="primary"
              onClick={() => performOperation('-')}
              className="flex-1 bg-red-600 hover:bg-red-700"
            >
              <Minus className="w-5 h-5 mr-2" />
              Subtract {operationAmount}
            </Button>
            <Button
              variant="primary"
              onClick={() => performOperation('+')}
              className="flex-1 bg-green-600 hover:bg-green-700"
            >
              <Plus className="w-5 h-5 mr-2" />
              Add {operationAmount}
            </Button>
          </div>
        </Card>

        {/* Settings */}
        <Card className="bg-slate-800/50 border-slate-700">
          <h3 className="text-lg font-semibold text-white mb-4">Settings</h3>

          <div className="space-y-4">
            <div>
              <label className="text-slate-400 text-sm mb-2 block">Range</label>
              <div className="flex items-center gap-4">
                <input
                  type="number"
                  value={range.min}
                  onChange={e => setRange(prev => ({ ...prev, min: Number(e.target.value) }))}
                  className="w-20 px-3 py-2 bg-slate-700 border border-slate-600 rounded-lg text-white text-center"
                />
                <span className="text-slate-400">to</span>
                <input
                  type="number"
                  value={range.max}
                  onChange={e => setRange(prev => ({ ...prev, max: Number(e.target.value) }))}
                  className="w-20 px-3 py-2 bg-slate-700 border border-slate-600 rounded-lg text-white text-center"
                />
              </div>
            </div>

            <div className="flex items-center justify-between">
              <span className="text-slate-300">Show All Numbers</span>
              <button
                onClick={() => setShowFractions(!showFractions)}
                className={cn(
                  "relative w-12 h-6 rounded-full transition",
                  showFractions ? "bg-primary-600" : "bg-slate-600"
                )}
              >
                <div
                  className={cn(
                    "absolute top-0.5 w-5 h-5 bg-white rounded-full transition-transform",
                    showFractions ? "translate-x-6" : "translate-x-1"
                  )}
                />
              </button>
            </div>

            <Button
              variant="secondary"
              onClick={reset}
              fullWidth
              className="bg-slate-700 border-slate-600"
            >
              <RotateCcw className="w-4 h-4 mr-2" />
              Reset
            </Button>
          </div>
        </Card>
      </div>

      {/* Operations History */}
      {operations.length > 0 && (
        <Card className="bg-slate-800/50 border-slate-700">
          <h3 className="text-lg font-semibold text-white mb-4">Operations History</h3>
          <div className="flex flex-wrap gap-2">
            {operations.map((op, i) => (
              <div
                key={i}
                className="flex items-center gap-2 px-3 py-2 rounded-lg"
                style={{ backgroundColor: `${op.color}20`, borderColor: op.color, borderWidth: 1 }}
              >
                <span className="text-white">{op.start}</span>
                <span style={{ color: op.color }}>{op.operation} {op.amount}</span>
                <ArrowRight className="w-4 h-4 text-slate-400" />
                <span className="text-white font-bold">
                  {op.start + (op.operation === '+' ? op.amount : -op.amount)}
                </span>
              </div>
            ))}
          </div>
        </Card>
      )}
    </div>
  );
}
