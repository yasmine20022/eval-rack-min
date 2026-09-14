require "json"

app = lambda do |env|
  body = env["PATH_INFO"] == "/health" ? { status: "ok" } : { service: "eval-rack-min" }
  [200, { "content-type" => "application/json" }, [body.to_json]]
end

run app
