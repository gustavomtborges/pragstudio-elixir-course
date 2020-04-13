defmodule Servy.HandlerTest do
  use ExUnit.Case
  import Servy.Handler

  test "response from path /noexits" do
    req = """
    GET /noexist HTTP/1.1
    Host: example.com
    User-Agent: ExampleBrowser/1.0
    Accept: */*
    """

    expected = """
    HTTP/1.1 404 Not Found
    Content-Type: text/html
    Content-Length: 17

    No /noexist here!
    """

    result = req |> handle()
    assert result == expected
  end

  test "response from path /bears" do
    req = """
    GET /bears HTTP/1.1
    Host: example.com
    User-Agent: ExampleBrowser/1.0
    Accept: */*
    """

    expected = """
    HTTP/1.1 200 OK
    Content-Type: text/html
    Content-Length: 25

    Teddy, Smokey, Paddington
    """

    result = req |> handle()
    assert result == expected
  end

  test "response from path /wildthings" do
    req = """
    GET /wildthings HTTP/1.1
    Host: example.com
    User-Agent: ExampleBrowser/1.0
    Accept: */*
    """

    expected = """
    HTTP/1.1 200 OK
    Content-Type: text/html
    Content-Length: 20

    Bears, Lions, Tigers
    """

    result = req |> handle()
    assert result == expected
  end
end
