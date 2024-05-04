
import React, { useState } from 'react';
import { motion } from 'framer-motion';

const AuthPage = () => {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [isLogin, setIsLogin] = useState(true);

  const handleToggleMode = () => {
    setIsLogin(prevState => !prevState);
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    // Handle login/signup logic here
  };
  

  return (
    <motion.div 
      className="min-h-screen flex items-center justify-center bg-cover bg-center bg-gradient-to-br from-green-400 to-blue-500"
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      transition={{ duration: 0.5 }}
    >
      <div className="bg-white p-8 rounded-md shadow-lg transform transition-all duration-500">
        <h2 className="text-2xl font-bold mb-4">{isLogin ? 'Log In' : 'Sign Up'}</h2>
        <form onSubmit={handleSubmit}>
          <div className="mb-4">
            <label htmlFor="email" className="block text-sm font-medium text-gray-700">Email</label>
            <input type="email" id="email" className="mt-1 p-2 block w-full border-gray-300 rounded-md focus:ring-indigo-500 focus:border-indigo-500" value={email} onChange={(e) => setEmail(e.target.value)} required />
          </div>
          <div className="mb-4">
            <label htmlFor="password" className="block text-sm font-medium text-gray-700">Password</label>
            <input type="password" id="password" className="mt-1 p-2 block w-full border-gray-300 rounded-md focus:ring-indigo-500 focus:border-indigo-500" value={password} onChange={(e) => setPassword(e.target.value)} required />
          </div>
          <button type="submit" className="w-full bg-indigo-500 text-white py-2 px-4 rounded-md hover:bg-indigo-600">{isLogin ? 'Log In' : 'Sign Up'}</button>
        </form>
        <p className="mt-4 text-sm">
          {isLogin ? "Don't have an account?" : "Already have an account?"}{' '}
          <button onClick={handleToggleMode} className="text-indigo-500 hover:underline">{isLogin ? 'Sign up' : 'Log in'}</button>
        </p>
      </div>
    </motion.div>
  );
};

export default AuthPage;
