export default {
  $Ignore: /\s+|[\/][\/].*/,  //this will be ignored.
  ID: /[a-z|A-Z|_]\w+/,
  INT: /\d+/,      //token with kind INT        
  CHAR: /./,       //single char: must be last
};
