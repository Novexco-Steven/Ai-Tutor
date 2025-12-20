import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { useUser } from '@/contexts/UserContext';
import { storage } from '@/utils/helpers';
import Header from '../shared/Header';
import Button from '../shared/Button';
import Card from '../shared/Card';
import AvatarDisplay from './AvatarDisplay';
import { Palette, Check, Sparkles } from 'lucide-react';
import { cn } from '@/utils/helpers';
import { AVATAR_OPTIONS } from '@/types';
import type { AvatarConfig } from '@/types';

const defaultAvatar: AvatarConfig = {
  skinTone: AVATAR_OPTIONS.skinTones[0],
  hairStyle: 'short',
  hairColor: AVATAR_OPTIONS.hairColors[0],
  eyeStyle: 'round',
  eyeColor: AVATAR_OPTIONS.eyeColors[0],
  mouthStyle: 'smile',
  accessory: 'none',
  outfit: 'tshirt',
  outfitColor: AVATAR_OPTIONS.outfitColors[0],
  background: AVATAR_OPTIONS.backgrounds[0]
};

type CustomizationCategory = 'skin' | 'hair' | 'eyes' | 'mouth' | 'accessory' | 'outfit' | 'background';

const categories: { id: CustomizationCategory; label: string; icon: string }[] = [
  { id: 'skin', label: 'Skin', icon: '🎨' },
  { id: 'hair', label: 'Hair', icon: '💇' },
  { id: 'eyes', label: 'Eyes', icon: '👀' },
  { id: 'mouth', label: 'Mouth', icon: '👄' },
  { id: 'accessory', label: 'Accessory', icon: '🎀' },
  { id: 'outfit', label: 'Outfit', icon: '👕' },
  { id: 'background', label: 'Background', icon: '🌈' }
];

export default function AvatarBuilder() {
  const navigate = useNavigate();
  const { profile } = useUser();
  const [avatar, setAvatar] = useState<AvatarConfig>(defaultAvatar);
  const [activeCategory, setActiveCategory] = useState<CustomizationCategory>('skin');
  const [saved, setSaved] = useState(false);

  // Load saved avatar on mount
  useEffect(() => {
    const savedAvatar = storage.get<AvatarConfig | null>(`learnlit_avatar_${profile?.id || 'guest'}`, null);
    if (savedAvatar) {
      setAvatar(savedAvatar);
    }
  }, [profile]);

  const updateAvatar = (updates: Partial<AvatarConfig>) => {
    setAvatar(prev => ({ ...prev, ...updates }));
    setSaved(false);
  };

  const saveAvatar = () => {
    storage.set(`learnlit_avatar_${profile?.id || 'guest'}`, avatar);
    setSaved(true);
    setTimeout(() => navigate('/'), 1500);
  };

  const randomize = () => {
    const random = <T,>(arr: readonly T[]): T => arr[Math.floor(Math.random() * arr.length)];
    setAvatar({
      skinTone: random(AVATAR_OPTIONS.skinTones),
      hairStyle: random(AVATAR_OPTIONS.hairStyles),
      hairColor: random(AVATAR_OPTIONS.hairColors),
      eyeStyle: random(AVATAR_OPTIONS.eyeStyles),
      eyeColor: random(AVATAR_OPTIONS.eyeColors),
      mouthStyle: random(AVATAR_OPTIONS.mouthStyles),
      accessory: random(AVATAR_OPTIONS.accessories),
      outfit: random(AVATAR_OPTIONS.outfits),
      outfitColor: random(AVATAR_OPTIONS.outfitColors),
      background: random(AVATAR_OPTIONS.backgrounds)
    });
    setSaved(false);
  };

  const renderOptions = () => {
    switch (activeCategory) {
      case 'skin':
        return (
          <div className="grid grid-cols-6 gap-3">
            {AVATAR_OPTIONS.skinTones.map(color => (
              <button
                key={color}
                onClick={() => updateAvatar({ skinTone: color })}
                className={cn(
                  "w-12 h-12 rounded-full border-4 transition-transform hover:scale-110",
                  avatar.skinTone === color ? "border-primary-500 scale-110" : "border-transparent"
                )}
                style={{ backgroundColor: color }}
              />
            ))}
          </div>
        );

      case 'hair':
        return (
          <div className="space-y-6">
            <div>
              <label className="text-sm text-slate-400 mb-2 block">Style</label>
              <div className="flex flex-wrap gap-2">
                {AVATAR_OPTIONS.hairStyles.map(style => (
                  <button
                    key={style}
                    onClick={() => updateAvatar({ hairStyle: style })}
                    className={cn(
                      "px-4 py-2 rounded-lg capitalize transition-colors",
                      avatar.hairStyle === style
                        ? "bg-primary-600 text-white"
                        : "bg-slate-700 text-slate-300 hover:bg-slate-600"
                    )}
                  >
                    {style}
                  </button>
                ))}
              </div>
            </div>
            <div>
              <label className="text-sm text-slate-400 mb-2 block">Color</label>
              <div className="grid grid-cols-8 gap-3">
                {AVATAR_OPTIONS.hairColors.map(color => (
                  <button
                    key={color}
                    onClick={() => updateAvatar({ hairColor: color })}
                    className={cn(
                      "w-10 h-10 rounded-full border-4 transition-transform hover:scale-110",
                      avatar.hairColor === color ? "border-primary-500 scale-110" : "border-transparent"
                    )}
                    style={{ backgroundColor: color }}
                  />
                ))}
              </div>
            </div>
          </div>
        );

      case 'eyes':
        return (
          <div className="space-y-6">
            <div>
              <label className="text-sm text-slate-400 mb-2 block">Style</label>
              <div className="flex flex-wrap gap-2">
                {AVATAR_OPTIONS.eyeStyles.map(style => (
                  <button
                    key={style}
                    onClick={() => updateAvatar({ eyeStyle: style })}
                    className={cn(
                      "px-4 py-2 rounded-lg capitalize transition-colors",
                      avatar.eyeStyle === style
                        ? "bg-primary-600 text-white"
                        : "bg-slate-700 text-slate-300 hover:bg-slate-600"
                    )}
                  >
                    {style}
                  </button>
                ))}
              </div>
            </div>
            <div>
              <label className="text-sm text-slate-400 mb-2 block">Color</label>
              <div className="grid grid-cols-5 gap-3">
                {AVATAR_OPTIONS.eyeColors.map(color => (
                  <button
                    key={color}
                    onClick={() => updateAvatar({ eyeColor: color })}
                    className={cn(
                      "w-10 h-10 rounded-full border-4 transition-transform hover:scale-110",
                      avatar.eyeColor === color ? "border-primary-500 scale-110" : "border-transparent"
                    )}
                    style={{ backgroundColor: color }}
                  />
                ))}
              </div>
            </div>
          </div>
        );

      case 'mouth':
        return (
          <div className="flex flex-wrap gap-2">
            {AVATAR_OPTIONS.mouthStyles.map(style => (
              <button
                key={style}
                onClick={() => updateAvatar({ mouthStyle: style })}
                className={cn(
                  "px-4 py-2 rounded-lg capitalize transition-colors",
                  avatar.mouthStyle === style
                    ? "bg-primary-600 text-white"
                    : "bg-slate-700 text-slate-300 hover:bg-slate-600"
                )}
              >
                {style}
              </button>
            ))}
          </div>
        );

      case 'accessory':
        return (
          <div className="flex flex-wrap gap-2">
            {AVATAR_OPTIONS.accessories.map(acc => (
              <button
                key={acc}
                onClick={() => updateAvatar({ accessory: acc })}
                className={cn(
                  "px-4 py-2 rounded-lg capitalize transition-colors",
                  avatar.accessory === acc
                    ? "bg-primary-600 text-white"
                    : "bg-slate-700 text-slate-300 hover:bg-slate-600"
                )}
              >
                {acc}
              </button>
            ))}
          </div>
        );

      case 'outfit':
        return (
          <div className="space-y-6">
            <div>
              <label className="text-sm text-slate-400 mb-2 block">Style</label>
              <div className="flex flex-wrap gap-2">
                {AVATAR_OPTIONS.outfits.map(outfit => (
                  <button
                    key={outfit}
                    onClick={() => updateAvatar({ outfit: outfit })}
                    className={cn(
                      "px-4 py-2 rounded-lg capitalize transition-colors",
                      avatar.outfit === outfit
                        ? "bg-primary-600 text-white"
                        : "bg-slate-700 text-slate-300 hover:bg-slate-600"
                    )}
                  >
                    {outfit}
                  </button>
                ))}
              </div>
            </div>
            <div>
              <label className="text-sm text-slate-400 mb-2 block">Color</label>
              <div className="grid grid-cols-7 gap-3">
                {AVATAR_OPTIONS.outfitColors.map(color => (
                  <button
                    key={color}
                    onClick={() => updateAvatar({ outfitColor: color })}
                    className={cn(
                      "w-10 h-10 rounded-full border-4 transition-transform hover:scale-110",
                      avatar.outfitColor === color ? "border-primary-500 scale-110" : "border-transparent"
                    )}
                    style={{ backgroundColor: color }}
                  />
                ))}
              </div>
            </div>
          </div>
        );

      case 'background':
        return (
          <div className="grid grid-cols-6 gap-3">
            {AVATAR_OPTIONS.backgrounds.map(color => (
              <button
                key={color}
                onClick={() => updateAvatar({ background: color })}
                className={cn(
                  "w-12 h-12 rounded-lg border-4 transition-transform hover:scale-110",
                  avatar.background === color ? "border-primary-500 scale-110" : "border-transparent"
                )}
                style={{ backgroundColor: color }}
              />
            ))}
          </div>
        );
    }
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900">
      <Header
        variant="dark"
        showBackButton
        title="Create Your Avatar"
        subtitle="Express yourself!"
        titleIcon={
          <div className="w-10 h-10 rounded-xl bg-gradient-to-br from-pink-500 to-purple-600 flex items-center justify-center">
            <Palette className="w-5 h-5 text-white" />
          </div>
        }
      />

      <main className="container-app py-8 max-w-5xl">
        {/* Category Tabs - Full Width Top Bar */}
        <div className="flex justify-center gap-2 mb-6 overflow-x-auto pb-2">
          {categories.map(cat => (
            <button
              key={cat.id}
              onClick={() => setActiveCategory(cat.id)}
              className={cn(
                "flex items-center gap-2 px-4 py-3 rounded-xl whitespace-nowrap transition-all",
                activeCategory === cat.id
                  ? "bg-gradient-to-r from-pink-500 to-purple-600 text-white shadow-lg scale-105"
                  : "bg-slate-700/80 text-slate-300 hover:bg-slate-600"
              )}
            >
              <span className="text-lg">{cat.icon}</span>
              <span className="font-medium">{cat.label}</span>
            </button>
          ))}
        </div>

        {/* Avatar Left, Options Right */}
        <div className="grid grid-cols-1 lg:grid-cols-[280px_1fr] gap-6">
          {/* Avatar Preview - Left Side */}
          <div className="flex flex-col">
            <Card className="bg-slate-800/50 border-slate-700 p-6 sticky top-4">
              <div className="flex justify-center mb-4">
                <AvatarDisplay config={avatar} size="xl" className="shadow-2xl" />
              </div>

              <div className="flex flex-col gap-2">
                <Button
                  variant="secondary"
                  onClick={randomize}
                  fullWidth
                  className="bg-slate-700 border-slate-600"
                >
                  <Sparkles className="w-4 h-4 mr-2" />
                  Randomize
                </Button>
                <Button
                  variant="primary"
                  onClick={saveAvatar}
                  fullWidth
                  disabled={saved}
                  className={cn(
                    "bg-gradient-to-r",
                    saved
                      ? "from-green-500 to-emerald-600"
                      : "from-pink-500 to-purple-600"
                  )}
                >
                  {saved ? (
                    <>
                      <Check className="w-4 h-4 mr-2" />
                      Saved!
                    </>
                  ) : (
                    "Save Avatar"
                  )}
                </Button>
              </div>
            </Card>
          </div>

          {/* Customization Options - Right Side */}
          <Card className="bg-slate-800/50 border-slate-700 p-6">
            <h3 className="text-lg font-semibold text-white mb-4 capitalize flex items-center gap-2">
              <span className="text-xl">{categories.find(c => c.id === activeCategory)?.icon}</span>
              {activeCategory} Options
            </h3>
            {renderOptions()}
          </Card>
        </div>
      </main>
    </div>
  );
}
