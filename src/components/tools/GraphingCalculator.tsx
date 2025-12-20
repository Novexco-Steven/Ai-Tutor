import { useState, useRef, useEffect } from 'react';
import Card from '../shared/Card';
import Button from '../shared/Button';
import { Plus, Trash2, RotateCcw } from 'lucide-react';
import type { GraphPoint } from '@/types';

interface PlottedFunction {
  id: string;
  expression: string;
  color: string;
}

const COLORS = ['#3B82F6', '#EF4444', '#10B981', '#F59E0B', '#8B5CF6', '#EC4899'];

export default function GraphingCalculator() {
  const canvasRef = useRef<HTMLCanvasElement>(null);
  const [points, setPoints] = useState<GraphPoint[]>([]);
  const [functions, setFunctions] = useState<PlottedFunction[]>([]);
  const [newFunction, setNewFunction] = useState('');
  const [scale, setScale] = useState(20); // pixels per unit
  const [error, setError] = useState<string | null>(null);

  // Grid size
  const gridSize = 400;
  const center = gridSize / 2;

  useEffect(() => {
    drawGraph();
  }, [points, functions, scale]);

  const drawGraph = () => {
    const canvas = canvasRef.current;
    if (!canvas) return;

    const ctx = canvas.getContext('2d');
    if (!ctx) return;

    // Clear canvas
    ctx.fillStyle = '#1E293B';
    ctx.fillRect(0, 0, gridSize, gridSize);

    // Draw grid
    ctx.strokeStyle = '#334155';
    ctx.lineWidth = 1;

    // Vertical lines
    for (let x = center % scale; x < gridSize; x += scale) {
      ctx.beginPath();
      ctx.moveTo(x, 0);
      ctx.lineTo(x, gridSize);
      ctx.stroke();
    }

    // Horizontal lines
    for (let y = center % scale; y < gridSize; y += scale) {
      ctx.beginPath();
      ctx.moveTo(0, y);
      ctx.lineTo(gridSize, y);
      ctx.stroke();
    }

    // Draw axes
    ctx.strokeStyle = '#64748B';
    ctx.lineWidth = 2;

    // X-axis
    ctx.beginPath();
    ctx.moveTo(0, center);
    ctx.lineTo(gridSize, center);
    ctx.stroke();

    // Y-axis
    ctx.beginPath();
    ctx.moveTo(center, 0);
    ctx.lineTo(center, gridSize);
    ctx.stroke();

    // Draw axis labels
    ctx.fillStyle = '#94A3B8';
    ctx.font = '12px Inter, sans-serif';
    ctx.textAlign = 'center';

    const range = Math.floor(gridSize / (2 * scale));
    for (let i = -range; i <= range; i++) {
      if (i !== 0) {
        // X-axis labels
        ctx.fillText(i.toString(), center + i * scale, center + 15);
        // Y-axis labels
        ctx.fillText((-i).toString(), center - 15, center + i * scale + 4);
      }
    }
    ctx.fillText('0', center - 10, center + 15);

    // Draw functions
    functions.forEach(func => {
      try {
        ctx.strokeStyle = func.color;
        ctx.lineWidth = 2;
        ctx.beginPath();

        let started = false;
        for (let px = 0; px < gridSize; px++) {
          const x = (px - center) / scale;
          let y: number;

          // Safely evaluate the expression
          try {
            y = evaluateExpression(func.expression, x);
          } catch {
            continue;
          }

          if (!isFinite(y) || isNaN(y)) continue;

          const py = center - y * scale;

          if (!started) {
            ctx.moveTo(px, py);
            started = true;
          } else {
            ctx.lineTo(px, py);
          }
        }
        ctx.stroke();
      } catch (e) {
        console.error('Error drawing function:', e);
      }
    });

    // Draw points
    points.forEach((point, index) => {
      const px = center + point.x * scale;
      const py = center - point.y * scale;

      // Point circle
      ctx.beginPath();
      ctx.fillStyle = COLORS[index % COLORS.length];
      ctx.arc(px, py, 6, 0, Math.PI * 2);
      ctx.fill();

      // Point outline
      ctx.strokeStyle = '#FFF';
      ctx.lineWidth = 2;
      ctx.stroke();

      // Label
      if (point.label) {
        ctx.fillStyle = '#FFF';
        ctx.font = '12px Inter, sans-serif';
        ctx.fillText(point.label, px + 10, py - 10);
      }
    });
  };

  const evaluateExpression = (expr: string, x: number): number => {
    // Simple expression evaluator for basic functions
    // Replace common math functions
    let sanitized = expr
      .toLowerCase()
      .replace(/\^/g, '**')
      .replace(/sin/g, 'Math.sin')
      .replace(/cos/g, 'Math.cos')
      .replace(/tan/g, 'Math.tan')
      .replace(/sqrt/g, 'Math.sqrt')
      .replace(/abs/g, 'Math.abs')
      .replace(/log/g, 'Math.log')
      .replace(/pi/g, 'Math.PI')
      .replace(/e(?![a-z])/g, 'Math.E');

    // Create function and evaluate
    const func = new Function('x', `return ${sanitized}`);
    return func(x);
  };

  const handleCanvasClick = (e: React.MouseEvent<HTMLCanvasElement>) => {
    const canvas = canvasRef.current;
    if (!canvas) return;

    const rect = canvas.getBoundingClientRect();
    const px = e.clientX - rect.left;
    const py = e.clientY - rect.top;

    const x = Math.round((px - center) / scale * 10) / 10;
    const y = Math.round((center - py) / scale * 10) / 10;

    setPoints(prev => [...prev, { x, y, label: `(${x}, ${y})` }]);
  };

  const addFunction = () => {
    if (!newFunction.trim()) return;

    // Validate by trying to evaluate
    try {
      evaluateExpression(newFunction, 1);
      setFunctions(prev => [
        ...prev,
        {
          id: Date.now().toString(),
          expression: newFunction,
          color: COLORS[prev.length % COLORS.length]
        }
      ]);
      setNewFunction('');
      setError(null);
    } catch (e) {
      setError('Invalid expression. Try something like: x^2, sin(x), 2*x+1');
    }
  };

  const removeFunction = (id: string) => {
    setFunctions(prev => prev.filter(f => f.id !== id));
  };

  const reset = () => {
    setPoints([]);
    setFunctions([]);
    setError(null);
  };

  return (
    <div className="space-y-6">
      {/* Graph Canvas */}
      <Card className="bg-slate-800/50 border-slate-700 p-4">
        <div className="flex justify-center mb-4">
          <canvas
            ref={canvasRef}
            width={gridSize}
            height={gridSize}
            onClick={handleCanvasClick}
            className="rounded-lg cursor-crosshair"
          />
        </div>
        <p className="text-center text-slate-400 text-sm">
          Click on the graph to plot points
        </p>
      </Card>

      {/* Controls */}
      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        {/* Function Input */}
        <Card className="bg-slate-800/50 border-slate-700">
          <h3 className="text-lg font-semibold text-white mb-4">Plot a Function</h3>
          <div className="flex gap-2 mb-4">
            <div className="flex-1">
              <label className="text-slate-400 text-sm mb-1 block">y =</label>
              <input
                type="text"
                value={newFunction}
                onChange={e => setNewFunction(e.target.value)}
                onKeyPress={e => e.key === 'Enter' && addFunction()}
                placeholder="e.g., x^2, sin(x), 2*x+1"
                className="w-full px-3 py-2 bg-slate-700 border border-slate-600 rounded-lg text-white placeholder-slate-400 focus:outline-none focus:ring-2 focus:ring-primary-500"
              />
            </div>
            <Button
              variant="primary"
              onClick={addFunction}
              className="mt-6 bg-gradient-to-r from-blue-500 to-cyan-500"
            >
              <Plus className="w-5 h-5" />
            </Button>
          </div>
          {error && (
            <p className="text-red-400 text-sm mb-2">{error}</p>
          )}
          {functions.length > 0 && (
            <div className="space-y-2">
              {functions.map(func => (
                <div
                  key={func.id}
                  className="flex items-center justify-between p-2 bg-slate-700 rounded-lg"
                >
                  <div className="flex items-center gap-2">
                    <div
                      className="w-4 h-4 rounded-full"
                      style={{ backgroundColor: func.color }}
                    />
                    <span className="text-white font-mono">y = {func.expression}</span>
                  </div>
                  <button
                    onClick={() => removeFunction(func.id)}
                    className="text-slate-400 hover:text-red-400"
                  >
                    <Trash2 className="w-4 h-4" />
                  </button>
                </div>
              ))}
            </div>
          )}
        </Card>

        {/* Points & Zoom */}
        <Card className="bg-slate-800/50 border-slate-700">
          <h3 className="text-lg font-semibold text-white mb-4">Points & Zoom</h3>

          {/* Zoom Control */}
          <div className="mb-4">
            <label className="text-slate-400 text-sm mb-2 block">Zoom Level</label>
            <input
              type="range"
              min="10"
              max="40"
              value={scale}
              onChange={e => setScale(Number(e.target.value))}
              className="w-full"
            />
          </div>

          {/* Points List */}
          {points.length > 0 && (
            <div className="space-y-2 mb-4">
              <label className="text-slate-400 text-sm">Plotted Points</label>
              <div className="flex flex-wrap gap-2">
                {points.map((point, index) => (
                  <span
                    key={index}
                    className="px-2 py-1 rounded-full text-sm text-white"
                    style={{ backgroundColor: COLORS[index % COLORS.length] }}
                  >
                    ({point.x}, {point.y})
                  </span>
                ))}
              </div>
            </div>
          )}

          <Button
            variant="secondary"
            onClick={reset}
            fullWidth
            className="bg-slate-700 border-slate-600"
          >
            <RotateCcw className="w-4 h-4 mr-2" />
            Clear All
          </Button>
        </Card>
      </div>

      {/* Tips */}
      <Card className="bg-slate-800/50 border-slate-700">
        <h3 className="text-lg font-semibold text-white mb-3">Supported Functions</h3>
        <div className="grid grid-cols-2 md:grid-cols-4 gap-3 text-sm">
          <div className="p-2 bg-slate-700 rounded-lg">
            <code className="text-cyan-400">x^2</code>
            <span className="text-slate-400 ml-2">Squared</span>
          </div>
          <div className="p-2 bg-slate-700 rounded-lg">
            <code className="text-cyan-400">sin(x)</code>
            <span className="text-slate-400 ml-2">Sine</span>
          </div>
          <div className="p-2 bg-slate-700 rounded-lg">
            <code className="text-cyan-400">cos(x)</code>
            <span className="text-slate-400 ml-2">Cosine</span>
          </div>
          <div className="p-2 bg-slate-700 rounded-lg">
            <code className="text-cyan-400">sqrt(x)</code>
            <span className="text-slate-400 ml-2">Square root</span>
          </div>
        </div>
      </Card>
    </div>
  );
}
