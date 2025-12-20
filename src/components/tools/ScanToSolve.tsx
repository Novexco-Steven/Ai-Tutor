import { useState, useRef, useCallback } from 'react';
import { useNavigate } from 'react-router-dom';
import { useUser } from '@/contexts/UserContext';
import { solveProblemFromImage } from '@/services/ai';
import Header from '../shared/Header';
import Button from '../shared/Button';
import Card from '../shared/Card';
import Loading from '../shared/Loading';
import { Camera, Upload, X, RefreshCw, CheckCircle, Lightbulb, ArrowRight, Image } from 'lucide-react';
import { cn } from '@/utils/helpers';
import type { AIScanSolveResponse, SolutionStep } from '@/types';

export default function ScanToSolve() {
  const navigate = useNavigate();
  const { profile } = useUser();
  const fileInputRef = useRef<HTMLInputElement>(null);
  const videoRef = useRef<HTMLVideoElement>(null);
  const canvasRef = useRef<HTMLCanvasElement>(null);

  const [mode, setMode] = useState<'select' | 'camera' | 'preview' | 'solving' | 'result'>('select');
  const [imageData, setImageData] = useState<string | null>(null);
  const [solution, setSolution] = useState<AIScanSolveResponse | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [cameraStream, setCameraStream] = useState<MediaStream | null>(null);

  const startCamera = async () => {
    try {
      const stream = await navigator.mediaDevices.getUserMedia({
        video: { facingMode: 'environment' }
      });
      setCameraStream(stream);
      if (videoRef.current) {
        videoRef.current.srcObject = stream;
      }
      setMode('camera');
      setError(null);
    } catch (err) {
      console.error('Camera error:', err);
      setError('Could not access camera. Please try uploading an image instead.');
    }
  };

  const stopCamera = useCallback(() => {
    if (cameraStream) {
      cameraStream.getTracks().forEach(track => track.stop());
      setCameraStream(null);
    }
  }, [cameraStream]);

  const capturePhoto = () => {
    if (videoRef.current && canvasRef.current) {
      const video = videoRef.current;
      const canvas = canvasRef.current;
      canvas.width = video.videoWidth;
      canvas.height = video.videoHeight;
      const ctx = canvas.getContext('2d');
      if (ctx) {
        ctx.drawImage(video, 0, 0);
        const dataUrl = canvas.toDataURL('image/jpeg', 0.8);
        setImageData(dataUrl);
        stopCamera();
        setMode('preview');
      }
    }
  };

  const handleFileUpload = (event: React.ChangeEvent<HTMLInputElement>) => {
    const file = event.target.files?.[0];
    if (file) {
      const reader = new FileReader();
      reader.onload = (e) => {
        setImageData(e.target?.result as string);
        setMode('preview');
      };
      reader.readAsDataURL(file);
    }
  };

  const solveProblem = async () => {
    if (!imageData) return;

    setMode('solving');
    setError(null);

    try {
      const result = await solveProblemFromImage({
        imageBase64: imageData,
        gradeLevel: profile?.grade_level || 5
      });
      setSolution(result);
      setMode('result');
    } catch (err) {
      console.error('Solve error:', err);
      setError(err instanceof Error ? err.message : 'Failed to solve problem');
      setMode('preview');
    }
  };

  const reset = () => {
    stopCamera();
    setImageData(null);
    setSolution(null);
    setError(null);
    setMode('select');
  };

  const subjectColors = {
    math: 'from-blue-500 to-purple-600',
    science: 'from-green-500 to-teal-600',
    other: 'from-orange-500 to-red-600'
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900">
      <Header
        variant="dark"
        showBackButton
        title="Scan & Solve"
        subtitle="Take a photo of any problem"
        titleIcon={
          <div className="w-10 h-10 rounded-xl bg-gradient-to-br from-cyan-500 to-blue-600 flex items-center justify-center">
            <Camera className="w-5 h-5 text-white" />
          </div>
        }
      />

      <main className="container-app py-8 max-w-2xl">
        {/* Select Mode */}
        {mode === 'select' && (
          <div className="animate-fade-in space-y-6">
            <Card className="bg-slate-800/50 border-slate-700 text-center p-8">
              <div className="w-20 h-20 mx-auto mb-6 rounded-2xl bg-gradient-to-br from-cyan-500 to-blue-600 flex items-center justify-center">
                <Camera className="w-10 h-10 text-white" />
              </div>
              <h2 className="text-2xl font-bold text-white mb-2">Snap a Problem</h2>
              <p className="text-slate-300 mb-8">
                Take a photo of any math or science problem, and I'll show you how to solve it step by step!
              </p>

              <div className="grid grid-cols-2 gap-4">
                <Button
                  variant="primary"
                  onClick={startCamera}
                  className="py-6 flex-col gap-2 bg-gradient-to-r from-cyan-500 to-blue-600"
                >
                  <Camera className="w-8 h-8" />
                  <span>Use Camera</span>
                </Button>
                <Button
                  variant="secondary"
                  onClick={() => fileInputRef.current?.click()}
                  className="py-6 flex-col gap-2 bg-slate-700 hover:bg-slate-600 border-slate-600"
                >
                  <Upload className="w-8 h-8" />
                  <span>Upload Photo</span>
                </Button>
              </div>
              <input
                ref={fileInputRef}
                type="file"
                accept="image/*"
                onChange={handleFileUpload}
                className="hidden"
              />
            </Card>

            {error && (
              <div className="p-4 bg-red-500/20 border border-red-500/50 rounded-xl text-red-300 text-center">
                {error}
              </div>
            )}

            <div className="text-center text-slate-400 text-sm">
              <p>Works best with clear, well-lit photos</p>
              <p>Supports handwritten and printed problems</p>
            </div>
          </div>
        )}

        {/* Camera Mode */}
        {mode === 'camera' && (
          <div className="animate-fade-in space-y-4">
            <div className="relative rounded-2xl overflow-hidden bg-black">
              <video
                ref={videoRef}
                autoPlay
                playsInline
                className="w-full aspect-[4/3] object-cover"
              />
              <canvas ref={canvasRef} className="hidden" />

              {/* Camera overlay guide */}
              <div className="absolute inset-0 pointer-events-none">
                <div className="absolute inset-8 border-2 border-white/30 rounded-xl" />
                <div className="absolute bottom-4 left-0 right-0 text-center text-white/70 text-sm">
                  Position the problem within the frame
                </div>
              </div>
            </div>

            <div className="flex gap-4">
              <Button
                variant="secondary"
                onClick={() => { stopCamera(); setMode('select'); }}
                className="flex-1 bg-slate-700 border-slate-600"
              >
                <X className="w-5 h-5 mr-2" />
                Cancel
              </Button>
              <Button
                variant="primary"
                onClick={capturePhoto}
                className="flex-1 bg-gradient-to-r from-cyan-500 to-blue-600"
              >
                <Camera className="w-5 h-5 mr-2" />
                Capture
              </Button>
            </div>
          </div>
        )}

        {/* Preview Mode */}
        {mode === 'preview' && imageData && (
          <div className="animate-fade-in space-y-4">
            <div className="relative rounded-2xl overflow-hidden">
              <img src={imageData} alt="Captured problem" className="w-full" />
            </div>

            {error && (
              <div className="p-4 bg-red-500/20 border border-red-500/50 rounded-xl text-red-300 text-center">
                {error}
              </div>
            )}

            <div className="flex gap-4">
              <Button
                variant="secondary"
                onClick={reset}
                className="flex-1 bg-slate-700 border-slate-600"
              >
                <RefreshCw className="w-5 h-5 mr-2" />
                Retake
              </Button>
              <Button
                variant="primary"
                onClick={solveProblem}
                className="flex-1 bg-gradient-to-r from-green-500 to-emerald-600"
              >
                <Lightbulb className="w-5 h-5 mr-2" />
                Solve It!
              </Button>
            </div>
          </div>
        )}

        {/* Solving Mode */}
        {mode === 'solving' && (
          <div className="animate-fade-in">
            <Card className="bg-slate-800/50 border-slate-700 text-center p-12">
              <Loading message="Analyzing your problem..." />
              <p className="text-slate-400 mt-4">This might take a few seconds</p>
            </Card>
          </div>
        )}

        {/* Result Mode */}
        {mode === 'result' && solution && (
          <div className="animate-fade-in space-y-6">
            {/* Problem Detected */}
            <Card className="bg-slate-800/50 border-slate-700">
              <div className="flex items-start gap-4">
                <div className={cn(
                  "w-12 h-12 rounded-xl flex items-center justify-center shrink-0 bg-gradient-to-br",
                  subjectColors[solution.subject]
                )}>
                  <Image className="w-6 h-6 text-white" />
                </div>
                <div>
                  <span className="text-sm text-slate-400 uppercase tracking-wide">Problem Detected</span>
                  <p className="text-xl font-semibold text-white mt-1">{solution.problemDetected}</p>
                  <span className={cn(
                    "inline-block mt-2 px-3 py-1 rounded-full text-sm font-medium capitalize",
                    solution.subject === 'math' && "bg-blue-500/20 text-blue-300",
                    solution.subject === 'science' && "bg-green-500/20 text-green-300",
                    solution.subject === 'other' && "bg-orange-500/20 text-orange-300"
                  )}>
                    {solution.subject}
                  </span>
                </div>
              </div>
            </Card>

            {/* Solution Steps */}
            <Card className="bg-slate-800/50 border-slate-700">
              <h3 className="text-lg font-semibold text-white mb-4 flex items-center gap-2">
                <ArrowRight className="w-5 h-5 text-cyan-400" />
                Step-by-Step Solution
              </h3>
              <div className="space-y-4">
                {solution.steps.map((step: SolutionStep) => (
                  <div key={step.stepNumber} className="flex gap-4">
                    <div className="w-8 h-8 rounded-full bg-gradient-to-br from-cyan-500 to-blue-600 flex items-center justify-center shrink-0 text-white font-bold text-sm">
                      {step.stepNumber}
                    </div>
                    <div className="flex-1">
                      <p className="text-white">{step.description}</p>
                      {step.result && (
                        <p className="text-cyan-400 font-mono mt-1">{step.result}</p>
                      )}
                    </div>
                  </div>
                ))}
              </div>
            </Card>

            {/* Final Answer */}
            <Card className="bg-gradient-to-r from-green-500/20 to-emerald-500/20 border-green-500/30">
              <div className="flex items-center gap-4">
                <div className="w-12 h-12 rounded-full bg-green-500 flex items-center justify-center">
                  <CheckCircle className="w-6 h-6 text-white" />
                </div>
                <div>
                  <span className="text-green-300 text-sm">Final Answer</span>
                  <p className="text-2xl font-bold text-white">{solution.solution}</p>
                </div>
              </div>
            </Card>

            {/* Explanation */}
            <Card className="bg-slate-800/50 border-slate-700">
              <h3 className="text-lg font-semibold text-white mb-3 flex items-center gap-2">
                <Lightbulb className="w-5 h-5 text-amber-400" />
                Why This Works
              </h3>
              <p className="text-slate-300 leading-relaxed">{solution.explanation}</p>
            </Card>

            {/* Tips */}
            {solution.tips.length > 0 && (
              <Card className="bg-slate-800/50 border-slate-700">
                <h3 className="text-lg font-semibold text-white mb-3">Pro Tips</h3>
                <ul className="space-y-2">
                  {solution.tips.map((tip, index) => (
                    <li key={index} className="flex items-start gap-2 text-slate-300">
                      <span className="text-cyan-400">•</span>
                      {tip}
                    </li>
                  ))}
                </ul>
              </Card>
            )}

            {/* Actions */}
            <div className="flex gap-4">
              <Button
                variant="secondary"
                onClick={reset}
                className="flex-1 bg-slate-700 border-slate-600"
              >
                <Camera className="w-5 h-5 mr-2" />
                Scan Another
              </Button>
              <Button
                variant="primary"
                onClick={() => navigate('/')}
                className="flex-1 bg-gradient-to-r from-cyan-500 to-blue-600"
              >
                Back to Dashboard
              </Button>
            </div>
          </div>
        )}
      </main>
    </div>
  );
}
