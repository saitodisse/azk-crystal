import moment from 'moment';

const calcYear = (birthYear) => {
  return moment(new Date(birthYear, 1, 1)).fromNow();
};

export default calcYear;
