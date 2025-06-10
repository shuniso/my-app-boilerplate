import { useEffect, useState } from 'react'

export default function Home() {
  const [message, setMessage] = useState('...')

  useEffect(() => {
    fetch('/api/hello')
      .then((res) => res.json())
      .then((data) => setMessage(data.message))
  }, [])

  return (
    <main>
      <h1>Hello from Next.js</h1>
      <p>API says: {message}</p>
    </main>
  )
}