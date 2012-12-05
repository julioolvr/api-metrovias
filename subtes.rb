require 'net/http'

def get_status()
  source = Net::HTTP.get(URI('http://www.metrovias.com.ar/V2/InfoSubteSplash.asp'))
  regexp = /pausecontent\[\d+\]\s*=.*?L.nea (\w).*?;(.*?)'/m
  Hash[source.scan(regexp)]
end
