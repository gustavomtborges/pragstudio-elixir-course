defmodule Servy.HandlerTest do
  use ExUnit.Case
  import Servy.Handler

  reqWild = """
  GET /wildthings HTTP/1.1
  Host: example.com
  User-Agent: ExampleBrowser/1.0
  Accept: */*
  """

  reqBears = """
  GET /bears HTTP/1.1
  Host: example.com
  User-Agent: ExampleBrowser/1.0
  Accept: */*
  """

  reqNoExist = """
  GET /noexits HTTP/1.1
  Host: example.com
  User-Agent: ExampleBrowser/1.0
  Accept: */*
  """

  test "response from path /noexits" do
    reqNoExist |> handle()
  end
end
