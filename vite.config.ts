import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react-swc'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    host: '0.0.0.0', // Permite el acceso desde cualquier dirección IP
    port: 5173,
    watch: {
      usePolling: true, // Soluciona problemas de hot reload en sistemas de archivos compartidos
    },
  },
})
