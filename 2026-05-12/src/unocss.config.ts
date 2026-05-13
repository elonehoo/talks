import config from '@slidev/client/uno.config'
import { mergeConfigs } from 'unocss'

export default mergeConfigs([
  config,
  {
    shortcuts: {
      'text-gradient': 'text-transparent bg-clip-text bg-gradient-to-tl from-[#AACCFF] via-sky-300 to-white',
      'text-theme': 'text-[#AACCFF]',
      'border-theme': 'border-[#AACCFF]',
    },
  },
])
