import config from '@slidev/client/uno.config'
import { mergeConfigs } from 'unocss'

export default mergeConfigs([
  config,
  {
    shortcuts: {
      'text-gradient': 'text-transparent bg-clip-text bg-gradient-to-tl from-[#d46e47] via-[#e39a78] to-white',
      'text-theme': 'text-[#d46e47]',
      'border-theme': 'border-[#d46e47]',
      'font-hand': "font-['Playwrite_IT_Moderna']",
    },
  },
])
