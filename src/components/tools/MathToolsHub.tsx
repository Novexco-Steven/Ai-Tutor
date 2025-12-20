import { useState } from 'react';
import Header from '../shared/Header';
import Card from '../shared/Card';
import GraphingCalculator from './GraphingCalculator';
import FractionVisualizer from './FractionVisualizer';
import NumberLine from './NumberLine';
import { Calculator, PieChart, ArrowRightLeft, Shapes } from 'lucide-react';
import { cn } from '@/utils/helpers';

type ToolType = 'graphing' | 'fractions' | 'numberline' | null;

const tools = [
  {
    id: 'graphing' as ToolType,
    name: 'Graphing Calculator',
    description: 'Plot points and functions on a coordinate grid',
    icon: Calculator,
    color: 'from-blue-500 to-cyan-500',
    grade: '4+'
  },
  {
    id: 'fractions' as ToolType,
    name: 'Fraction Visualizer',
    description: 'See fractions as pie charts, bars, and grids',
    icon: PieChart,
    color: 'from-purple-500 to-pink-500',
    grade: '2+'
  },
  {
    id: 'numberline' as ToolType,
    name: 'Number Line',
    description: 'Explore numbers and operations on a line',
    icon: ArrowRightLeft,
    color: 'from-green-500 to-emerald-500',
    grade: '1+'
  }
];

export default function MathToolsHub() {
  const [activeTool, setActiveTool] = useState<ToolType>(null);

  const renderTool = () => {
    switch (activeTool) {
      case 'graphing':
        return <GraphingCalculator />;
      case 'fractions':
        return <FractionVisualizer />;
      case 'numberline':
        return <NumberLine />;
      default:
        return null;
    }
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900">
      <Header
        variant="dark"
        showBackButton
        backButtonLabel={activeTool ? 'Back to Tools' : 'Exit'}
        onBackClick={activeTool ? () => setActiveTool(null) : undefined}
        title={activeTool ? tools.find(t => t.id === activeTool)?.name : 'Math Tools'}
        subtitle={activeTool ? 'Interactive learning tool' : 'Explore and visualize math concepts'}
        titleIcon={
          <div className="w-10 h-10 rounded-xl bg-gradient-to-br from-blue-500 to-purple-600 flex items-center justify-center">
            <Shapes className="w-5 h-5 text-white" />
          </div>
        }
      />

      <main className="container-app py-8 max-w-4xl">
        {!activeTool ? (
          <div className="grid grid-cols-1 md:grid-cols-3 gap-6 animate-fade-in">
            {tools.map(tool => {
              const Icon = tool.icon;
              return (
                <Card
                  key={tool.id}
                  interactive
                  onClick={() => setActiveTool(tool.id)}
                  className="bg-slate-800/50 border-slate-700 hover:border-slate-500 transition-all"
                >
                  <div className={cn(
                    "w-16 h-16 rounded-2xl mb-4 flex items-center justify-center bg-gradient-to-br",
                    tool.color
                  )}>
                    <Icon className="w-8 h-8 text-white" />
                  </div>
                  <h3 className="text-lg font-semibold text-white mb-2">{tool.name}</h3>
                  <p className="text-slate-400 text-sm mb-3">{tool.description}</p>
                  <span className="inline-block px-2 py-1 rounded-full bg-slate-700 text-slate-300 text-xs">
                    Grade {tool.grade}
                  </span>
                </Card>
              );
            })}
          </div>
        ) : (
          <div className="animate-fade-in">
            {renderTool()}
          </div>
        )}
      </main>
    </div>
  );
}
