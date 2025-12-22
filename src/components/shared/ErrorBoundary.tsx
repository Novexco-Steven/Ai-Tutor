import { Component, ReactNode } from 'react';
import { AlertTriangle, RefreshCw, Home } from 'lucide-react';
import Button from './Button';

interface Props {
  children: ReactNode;
  fallback?: ReactNode;
}

interface State {
  hasError: boolean;
  error: Error | null;
  errorInfo: React.ErrorInfo | null;
}

export default class ErrorBoundary extends Component<Props, State> {
  constructor(props: Props) {
    super(props);
    this.state = {
      hasError: false,
      error: null,
      errorInfo: null,
    };
  }

  static getDerivedStateFromError(error: Error): Partial<State> {
    return { hasError: true, error };
  }

  componentDidCatch(error: Error, errorInfo: React.ErrorInfo): void {
    this.setState({ errorInfo });

    // Log error for debugging (in production, send to error reporting service)
    console.error('ErrorBoundary caught an error:', error);
    console.error('Error info:', errorInfo);
  }

  handleReset = (): void => {
    this.setState({
      hasError: false,
      error: null,
      errorInfo: null,
    });
  };

  handleGoHome = (): void => {
    window.location.href = '/';
  };

  render(): ReactNode {
    if (this.state.hasError) {
      // If a custom fallback is provided, use it
      if (this.props.fallback) {
        return this.props.fallback;
      }

      // Default error UI
      return (
        <div className="min-h-screen flex items-center justify-center bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 p-4">
          <div className="max-w-md w-full bg-slate-800 rounded-2xl shadow-2xl p-8 text-center">
            <div className="flex justify-center mb-6">
              <div className="w-16 h-16 bg-red-500/20 rounded-full flex items-center justify-center">
                <AlertTriangle className="w-8 h-8 text-red-400" />
              </div>
            </div>

            <h1 className="text-2xl font-bold text-white mb-2">
              Oops! Something went wrong
            </h1>

            <p className="text-slate-400 mb-6">
              We're sorry, but something unexpected happened. Don't worry, your progress is saved!
            </p>

            {/* Show error details in development */}
            {process.env.NODE_ENV === 'development' && this.state.error && (
              <div className="mb-6 p-4 bg-slate-900 rounded-lg text-left overflow-auto max-h-40">
                <p className="text-red-400 font-mono text-sm break-all">
                  {this.state.error.message}
                </p>
                {this.state.errorInfo && (
                  <pre className="mt-2 text-slate-500 font-mono text-xs whitespace-pre-wrap">
                    {this.state.errorInfo.componentStack}
                  </pre>
                )}
              </div>
            )}

            <div className="flex flex-col sm:flex-row gap-3 justify-center">
              <Button
                variant="primary"
                onClick={this.handleReset}
                className="flex items-center justify-center gap-2"
              >
                <RefreshCw className="w-4 h-4" />
                Try Again
              </Button>

              <Button
                variant="secondary"
                onClick={this.handleGoHome}
                className="flex items-center justify-center gap-2"
              >
                <Home className="w-4 h-4" />
                Go Home
              </Button>
            </div>

            <p className="mt-6 text-slate-500 text-sm">
              If this keeps happening, please{' '}
              <a
                href="mailto:support@tulomi.com"
                className="text-primary-400 hover:text-primary-300 underline"
              >
                contact support
              </a>
            </p>
          </div>
        </div>
      );
    }

    return this.props.children;
  }
}
