module ReceiverHelper
  def creds_line
    creds = []
    File.open('creds', 'r').each_line{|line|
      creds << line
    }
    creds[0][0..-2] + ':' + creds[1][0..-2] # remove \n in the end of lines
  end
end