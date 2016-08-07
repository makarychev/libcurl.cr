require "./curl"

@[Link("libcurl")]
lib Easy
  alias Char = LibC::Char

  struct Curl_easy
    handle : Int32
  end

  fun init = curl_easy_init() : Curl_easy*
  fun setopt = curl_easy_setopt(handle : Curl_easy*, option : Curl::CURLoption, parameter : Char*) : Curl::CURLcode
  fun cleanup = curl_easy_cleanup(handle : Curl_easy*) : Void
  fun perform = curl_easy_perform(handle : Curl_easy*) : Curl::CURLcode
end
