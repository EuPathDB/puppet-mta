#switch between sendmail and postfix.  mta::application in hiera defaults to sendmail."

class mta (
  Enum['sendmail','postfix'] $application = 'sendmail',
  ){
    case $application {
      'sendmail': {
        include sendmail
      }
      'postfix': {
        include mta::remove_sendmail
        include postfix
      }
    }
  }
