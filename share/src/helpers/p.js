const p = (...args) => {
  if (typeof console !== 'undefined') {
    return console.log(args);
  }
  return {log: print(args)};
};

export default p;
