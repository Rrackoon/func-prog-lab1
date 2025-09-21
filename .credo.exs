%{
  configs: [
    %{
      name: "default",
      strict: false,
      checks: %{
        disabled: [
          {Credo.Check.Readability.ModuleDoc, []}
        ]
      }
    }
  ]
}
