@[Link("libcurl")]
lib Easy
  alias Char = LibC::Char
  alias Long = LibC::Long

  fun version = curl_version() : Char*
  fun getdate = curl_getdate(datestring : Char*, time_t : Long*) : Long
end
