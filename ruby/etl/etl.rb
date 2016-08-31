class ETL
  def self.transform(input)
    input.each_with_object({}) do |(k, v), result|
      v.each { |e| result[e.downcase] = k }
    end
  end
end
