require "runcobo"

class Api::V1::Add < BaseAction
  get "/api/v1/add"
  query NamedTyple(a: Int32, b: Int32)

  call do
    sum = params[:a] + params[:b]
    render_plain sum.to_s
  end
end

Runcobo.start