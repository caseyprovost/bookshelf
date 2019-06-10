# Define the Type
definition = Dry::Types::Nominal.new(Publisher)
type = definition.constructor do |input|
  input
end

# Register it with Graphiti
Graphiti::Types[:publisher] = {
  params: type,
  read: type,
  write: type,
  kind: 'record',
  canonical_name: :publisher,
  description: 'A publisher object from the PublisherRegistry'
}

